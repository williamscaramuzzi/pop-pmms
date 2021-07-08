import 'package:flutter/material.dart';
import 'package:popv3/meu_drawer.dart';
import 'package:popv3/pop.dart';
import 'package:provider/provider.dart';

import 'custom_pdf_viewer_widget.dart';
import 'meu_estado.dart';

class FavoritosPage extends StatefulWidget {
  final title = "Favoritos";
  const FavoritosPage({Key? key}) : super(key: key);
  @override
  _FavoritosPageState createState() => _FavoritosPageState();
}

class _FavoritosPageState extends State<FavoritosPage> {
  final ScrollController _scrollController = new ScrollController();
  List<Pop> _lista = [];
  void atualizaEstado(List<Pop> param){
    debugPrint("executou 1 vez atualizaEStado");
    setState(() {
      _lista = param;
    });
  }
  @override
  Widget build(BuildContext context) {
    debugPrint("buildou favoritosPageState");
    atualizaEstado(Provider.of<MeuEstado>(context, listen: false).listaoPops.where((element) => element.favoritado).toList());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Scrollbar(
        controller: _scrollController,
        thickness: 15,
        isAlwaysShown: true,
        radius: Radius.elliptical(5, 15),
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _lista.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.black,
              elevation: 3,
              color: Colors.white70,
              child: ListTile(
                trailing: IconButton(
                  icon: Icon(Icons.delete_forever),
                  color: Colors.black38,
                  onPressed: () async {
                    print("Pressionou o delete");
                    var popPressionado = _lista[index];
                    int indiceGeral = Provider.of<MeuEstado>(context, listen: false).listaoPops.indexOf(popPressionado);
                    Provider.of<MeuEstado>(context, listen: false).toggleFavoritado(indiceGeral);
                    setState(() {});
                  },
                ),
                leading: Text(_lista[index].id),
                title: Text(_lista[index].processo),
                //alguns pops não tem o nome do procedimento porque são únicos, o nome do procedimento é o mesmo nome do processo, pra esses eu verifico se existe, se não existir, preenche o subtitulo com string vazia:
                subtitle: Text(_lista[index].procedimento ?? ""),
                onTap: () async {
                  final path =
                      'assets/docs/${_lista[index].getFileName()}';
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => CustomPdfViewer(path)),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

