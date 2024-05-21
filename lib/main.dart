import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/api%20post.dart';
import 'package:flutter_application_1/interfaz/comprar.dart';
import 'package:flutter_application_1/interfaz/programador.dart';

void main(List<String> args) {
  runApp(inicio());
}

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menu(),
    );
  }
}

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TIENDA VIRTUAL'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 9, 146, 9),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(234, 9, 146, 9)),
                accountName: Text(
                  "TIENDA VIRTUAL",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abhishekm977@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(234, 9, 146, 9),
                  child: Text(
                    "L",
                    style: TextStyle(
                        fontSize: 30.0, color: Color.fromARGB(234, 9, 146, 9)),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: Text('Inicio'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => inicio(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text('Comprar'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => comprar(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Salir'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_2_rounded),
              title: Text('Desarrolladores'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => programador(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.cases_sharp),
              title: Text('carpeta'),
              onTap: () {
                Buscatienda().then((r) {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: Text("API Post"),
                          ),
                          body: ListView.builder(
                            itemCount: r.length,
                            itemBuilder: (BuildContext context, int i) {
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(r[i].url),
                                ),
                                title: Text(r[i].title),
                                trailing: Text(r[i].id.toString()),
                                
                              );
                            },
                          ),
                        );
                      });
                });
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('luis ramirez'),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/vector-premium/logotipo-compras-linea_9850-368.jpg'),
            radius: 120,
          )
        ],
      ),
    );
  }
}
