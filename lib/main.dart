import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'custom_pdf_viewer_widget.dart';
import 'searchclass.dart';
import 'pop.dart';
import 'meu_drawer.dart';
import 'meu_estado.dart';



void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => new MeuEstado(),
      lazy: false,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'POP PMMS',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          textTheme: TextTheme(headline6: TextStyle(color: Colors.white))),
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
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.white60,
        alignment: Alignment.center,
        child: Container(
          height: 300,
          color: Colors.white10,
          margin: EdgeInsets.only(bottom: 200),
          child: Column(
            children: [
              Container(
                color: Colors.white60,
                alignment: Alignment.center,
                child: Image.asset("assets/images/gear.png",
                    width: 150, bundle: DefaultAssetBundle.of(context)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Busque um POP abaixo:",
                    style: TextStyle(fontSize: 24),
                  )),
              Container(
                color: Colors.white60,
                alignment: Alignment.center,
                width: 200,
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                    width: 200,
                    height: 50,
                    child: GestureDetector(
                      onTap: () {
                        showSearch(
                            context: context,
                            delegate: Search(Pop.getListaString()));
                      },
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                            border:
                            Border.all(color: Colors.black12, width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                alignment: Alignment.bottomCenter,
                                width: 150,
                                child: Divider(
                                  thickness: 3,
                                  color: Colors.black12,
                                )),
                            Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: Icon(Icons.search))
                          ],
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
      drawer: MeuDrawer(),
    );
  }
}
