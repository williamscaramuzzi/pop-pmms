import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CustomPdfViewer extends StatefulWidget {
  final String pathDoPdfAtualmenteMostrado;

  ///Construtor
  CustomPdfViewer(String caminho, {Key? key}) :
        pathDoPdfAtualmenteMostrado = caminho,
        super(key: key);

  @override
  _CustomPdfViewerState createState() => _CustomPdfViewerState();
}

class _CustomPdfViewerState extends State<CustomPdfViewer> {
  late PdfViewerController _pdfViewerController;
  late TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    _pdfViewerController = PdfViewerController();
    _textController = TextEditingController(text: "");
  }

  PdfTextSearchResult? _searchResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            onSubmitted: (String texto) async{
              var res = await _pdfViewerController.searchText(texto);
              FocusScope.of(context).unfocus();
              setState(() {
                _searchResult = res;
              });
            },
            textInputAction: TextInputAction.search,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: "Pesquisar no documento",
                hintStyle: TextStyle(color: Colors.white30),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () async {
                  var res = await _pdfViewerController.searchText(_textController.text);
                  FocusScope.of(context).unfocus();
                  setState(() {
                    _searchResult = res;
                  });
                },
              ),
            ),
            controller: _textController,
          ),
          actions: <Widget>[
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _searchResult?.clear();
                    _textController.clear();
                  });
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
                onPressed: () {
                  _searchResult?.previousInstance();
                },
              ),
            ),
            Visibility(
              visible: _searchResult?.hasResult ?? false,
              child: IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                onPressed: () {
                  _searchResult?.nextInstance();
                },
              ),
            ),
          ],
        ),
        body: SfPdfViewer.asset(
            widget.pathDoPdfAtualmenteMostrado,
            bundle: rootBundle,
            controller:_pdfViewerController,
            searchTextHighlightColor: Colors.amber)
    );
  }
}
