import 'package:flutter/material.dart';

class programador extends StatefulWidget {
  const programador({super.key});

  @override
  State<programador> createState() => _programadorState();
}

class _programadorState extends State<programador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('programador'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/vector-premium/logotipo-compras-linea_9850-368.jpg'),
            radius: 50,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('LUIS RAMIREZ'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.numbers),
            title: Text('NUMERO DE TELEFONO'),
            subtitle: Text('3006758902'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info_sharp),
            title: Text('INFO'),
            subtitle: Text('nada'),
          ),
        ],
      ),
    );
  }
}
