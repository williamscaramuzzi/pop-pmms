import 'package:flutter/material.dart';

class DuvidasPage extends StatelessWidget {
  const DuvidasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Dúvidas freq (em construção)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: (){},
              title:
                  Text("Violência doméstica", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text("Contrabando e descaminho",
                  style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title:
                  Text("Atendimento indígena", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text("Acidente de trânsito: quando atender?",
                  style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text(
                  "Conduzir autor: crime condicionado ou incondicionado à representação",
                  style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title: Text("Exame de corpo de delito",
                  style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            ),
            Divider(),
            ListTile(
              onTap: (){},
              title:
                  Text("Invasão de domicílio", style: TextStyle(fontSize: 20)),
              leading: Icon(Icons.label_important_outline_rounded),
            )
          ],
        ),
      ),
    );
  }
}
