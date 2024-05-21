import 'package:flutter/material.dart';

class comprar extends StatefulWidget {
  const comprar({super.key});

  @override
  State<comprar> createState() => _comprarState();
}

class _comprarState extends State<comprar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('comprar'),
      ),
      body: (CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Image.network(
                        'https://letkicks.com/cdn/shop/products/air-max-2021-mens-shoes-fnRMh3_a2539445-303e-4758-861d-38b8eecebac5.jpg?v=1636305870')),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[100],
                  child: Image.network(
                      'https://i.pinimg.com/474x/88/54/9c/88549c0b0677ee317a307c2554b67ea5.jpg'),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Image.network(
                        'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/32566c38-df1d-4fb9-ba3d-7a50f9de5ea6/calzado-air-jordan-1-mid-se-Zn07hL.png')),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Image.network(
                        'https://i.blogs.es/c1f46e/240639940_5279965262043235_1066257375040884736_n/450_1000.webp')),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Image.network(
                        'https://osterco.vteximg.com.br/arquivos/ids/164722-500-500/BLSTKAG-NRD-2.jpg?v=638318754231630000')),
                Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.green[100],
                    child: Image.network(
                        'https://www.lg.com/content/dam/channel/wcms/co/images/televisores/65ur7300psa_awcq_escb_co_c/gallery/DZ-1.jpg')),
              ],
            ),
          ),
        ],
      )),
      floatingActionButton: IconButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Scaffold(
                appBar: AppBar(
                  title: Text('FORMULARIO'),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'ID',
                              hintText: 'INGRESE SOLO EL CODIGO SOLICITADO',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'TITLE',
                              hintText: 'INGRESE SOLO CARACTERES',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'BODY',
                              hintText: 'INGRESE SOLO CARACTERES',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.save),
                              label: Text('GUADAR')))
                    ],
                  ),
                ),
              );
            },
          );
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
