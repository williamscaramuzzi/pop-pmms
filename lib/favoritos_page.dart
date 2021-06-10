import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  const FavoritosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Favoritos (em construç)"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text("A página de POP's favoritados pelo usuário ainda está em construção.",
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
            Divider(height: 50,),
            Center(
              child: Icon(Icons.construction_outlined,
                size: 80,
                color: Colors.black,),
            )
          ],
        ),
      ),
      );
  }
}
