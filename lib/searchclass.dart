import 'package:flutter/material.dart';
import 'package:popv3/meu_estado.dart';
import 'package:provider/provider.dart';
import 'custom_pdf_viewer_widget.dart';
import 'pop.dart';

class Search extends SearchDelegate {
  final List<String> listaDePops;
  final ScrollController _scrollController = new ScrollController();

  Search(this.listaDePops); //constructor

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white) ,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.indigo,
        iconTheme: theme.primaryIconTheme.copyWith(color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white10),
      ),
    );
  }

  @override
  String get searchFieldLabel => 'Palavra-chave';

  @override
  List<Widget> buildActions(BuildContext context) {
    //build actions é o ícone que fica à direita da barra de digitação
    return <Widget>[
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //build leading é o ícone que fica à esquerda da digitação
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //build result é o widget que será mostrado quando dermos ENTER na busca
    List<Pop> resultList = [];
    query.isEmpty
        ? resultList = context.watch<MeuEstado>().listaoPops
        : resultList.addAll(context.watch<MeuEstado>().listaoPops.where(
            (pop) => pop.getFileName().toLowerCase().contains(query
                .toLowerCase()), //esse cara aqui tem que ser melhorado, ele tá Case Sensitive e tem que ser o menos restritivo possível
          ));


    return Scrollbar(
      controller: _scrollController,
      thickness: 15,
      isAlwaysShown: true,
      radius: Radius.elliptical(5, 15),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: resultList.length,
        itemBuilder: (context, index) {
          return Card(
              shadowColor: Colors.black,
              elevation: 3,
              color: Colors.white70,
              child: ListTile(
                trailing: IconButton(
                      icon: resultList[index].favoritado
                          ? Icon(Icons.star)
                          : Icon(Icons.star_outline),
                      color: Colors.black38,
                      onPressed: () async {
                        //print("Pressionou o fav");
                        var popPressionado = resultList[index];
                        int indiceGeral = Provider.of<MeuEstado>(context, listen: false).listaoPops.indexOf(popPressionado);
                        Provider.of<MeuEstado>(context, listen: false).toggleFavoritado(indiceGeral);
                        //print("Favoritado mudou para: ${Provider.of<MeuEstado>(context, listen: false).listaoPops[indiceGeral].favoritado}");
                      },
                    ),
                leading: Text(resultList[index].id),
                title: Text(resultList[index].processo),
                //alguns pops não tem o nome do procedimento porque são únicos, o nome do procedimento é o mesmo nome do processo, pra esses eu verifico se existe, se não existir, preenche o subtitulo com string vazia:
                subtitle: Text(resultList[index].procedimento ?? ""),
                onTap: () async {
                  final path =
                      'assets/docs/${resultList[index].getFileName()}';
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => CustomPdfViewer(path)),
                  );
                },
              ),
              );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //essa é a lista que aparece a medida que vamos digitando, e eu retornei um ListView ali embaixo pra desempenhar essa função
    List<Pop> suggestionList = [];
    query.isEmpty
        ? suggestionList = Pop.getLista()
        : suggestionList.addAll(Pop.getLista().where(
            (pop) => pop.getFileName().toLowerCase().contains(query
                .toLowerCase()), //esse cara aqui tem que ser melhorado, ele tá Case Sensitive e tem que ser o menos restritivo possível
          ));
    return ListView.builder(
      //TODO: fazer essa lista suspensa
      itemCount: suggestionList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          dense: true,
          horizontalTitleGap: 0.01,
          //leading: Text(suggestionList[index].id),
          title: Text(
            "${suggestionList[index].processo} ${suggestionList[index].procedimento ?? ""}",
            style: TextStyle(color: Colors.black54),
          ),
          //subtitle: Text(suggestionList[index].procedimento ?? ""),
          onTap: () async {
            FocusScope.of(context).unfocus();
            showResults(context);
            final path = 'assets/docs/${suggestionList[index].getFileName()}';
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CustomPdfViewer(path)),
            );
            print(path);
          },
        );
      },
    );
  }
}
