import 'package:flutter/material.dart';
import 'duvidas_page.dart';
import 'favoritos_page.dart';
import 'sobre_page.dart';
class MeuDrawer extends StatelessWidget {
  const MeuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
       children: [
         DrawerHeader(
             decoration: BoxDecoration(gradient: LinearGradient(
               begin: Alignment.bottomLeft,
               end: Alignment.topRight,
               colors: [Color.fromRGBO(41, 37, 98, 1), Color.fromRGBO(31, 67, 191, 1)]
             ) ),
             child: Row(
               children: [
                 Image.asset("assets/images/pmlogo.png", cacheHeight: 90, alignment: Alignment.centerLeft,),
                 SizedBox(
                   width: 170,
                   height: 100,
                   child: Center(
                     child: Text("Procedimento Operacional Padrão",
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         fontSize: 20,
                         color: Color.fromRGBO(255, 215, 18, 1)
                       ),
                     ),
                   ),
                 )
               ],
             )
           
         ),
         Divider(color: Colors.indigo[900],),
         ListTile(title: Text("Favoritos"), onTap: (){
           Navigator.of(context).pop();
           Navigator.of(context).push(new MaterialPageRoute(
               builder: (BuildContext context) => new FavoritosPage())
           );
         }),
         Divider(color: Colors.indigo[900]),
         ListTile(title: Text("Sobre o app"), onTap: (){
           Navigator.of(context).pop();
           Navigator.of(context).push(new MaterialPageRoute(
               builder: (BuildContext context) => new SobrePage())
           );
         })
       ],
     ),
    );
  }
}
