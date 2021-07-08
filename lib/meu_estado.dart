import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pop.dart';

class MeuEstado extends ChangeNotifier {
  List<Pop> _listaoPops = [];
  List<Pop> get listaoPops => _listaoPops;
  set listaoPops(List<Pop> lista) => _listaoPops = lista;

  ///Constructor
  MeuEstado(){
    iniciaEstado();
  }

  void iniciaEstado() async {
    var prefs = await SharedPreferences.getInstance();
    var listaString = await prefs.getStringList("listapop") ?? null;
    if(listaString==null){
      print("Inicia estado: entrou no if");
      _listaoPops = Pop.getLista();
      await prefs.setStringList("listapop", Pop.encodeToList(_listaoPops));
      print("Gravou uma nova listapop no Shared Preferences");
    } else {
      print("Inicia estado: entrou no else");
      _listaoPops = Pop.decodeFromList(listaString);
    }
    print("Finalizou a função iniciaEstado");
  }
  void toggleFavoritado(int index) {
    _listaoPops[index].favoritado
        ? _listaoPops[index].favoritado = false
        : _listaoPops[index].favoritado = true;
    persistirChanges();
    notifyListeners();
  }

  void persistirChanges() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setStringList("listapop", Pop.encodeToList(_listaoPops));
  }

}
