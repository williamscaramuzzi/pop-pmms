import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_pdf_viewer_widget.dart';
import 'searchclass.dart';
import 'pop.dart';
import 'meu_drawer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POP PMMS',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white))
      ),
      home: MyHomePage(title: 'Busca POP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final List<Pop> listaPop = Pop.getLista();
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollControllerdoMain = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              showSearch(context: context, delegate: Search(Pop.getListaString()));
            },
            icon: Icon(Icons.search),
          )
        ],
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Scrollbar(
        controller: _scrollControllerdoMain,
        thickness: 15,
        radius: Radius.elliptical(5, 15),
        isAlwaysShown: true,
        child: ListView.builder(
          controller: _scrollControllerdoMain,
          itemCount: widget.listaPop.length,
          itemBuilder: (context, index)=>Card(
            shadowColor: Colors.black,
            elevation: 3,
            color: Colors.white70,
            child: ListTile(
              leading: Text(widget.listaPop[index].id),
              title: Text(widget.listaPop[index].processo),
              subtitle: Text(widget.listaPop[index].procedimento ?? ""),
              onTap: () async {
                final path = "assets/docs/${widget.listaPop[index].getFileName()}";
                print("Meu path manual é: $path");
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CustomPdfViewer(path)),
                );
              },
            ),
          ),
        ),
      ),
      drawer: MeuDrawer(),
    );
  }
}
