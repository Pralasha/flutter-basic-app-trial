import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            title: const Text(
              "Vagator",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            centerTitle: false,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.7,
            elevation: 0.00,
            backgroundColor: Colors.blue,
          ),
          body: ListView(children: [
            Stack(
              children: <Widget>[
                SizedBox(
                    child: Image.network(
                        'https://www.tourmyindia.com/states/goa/image/vagator-beach-banner.webp',
                        fit: BoxFit.fitWidth)),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 10)
                        ]),
                    child: Text(
                      '''Vagator Beach, a curved stretch of sand overlooked by the Chapora Fort, you will find a lot of activities occurring simultaneously. Decent sized bars serve food & drinks, a cricket game in progress & vendors selling refreshing coconut water. The beach is dotted with a hillock on one side & headland on the other.''',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(color: Colors.white, spreadRadius: 10)
                  ]),
              child: Text(
                "Vagator Beach's more images",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.left,
              ),
            ),
            Center(
                child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16),
                    children: [
                  Image.network(
                      'https://www.tourmyindia.com/states/goa/image/sinquerim-beach-banner.webp'),
                  Image.network(
                      'https://www.tourmyindia.com/states/goa/image/ashwem-beach-banner.webp'),
                  Image.network(
                      'https://www.tourmyindia.com/states/goa/image/miramar-beach-banner.webp'),
                  Image.network(
                      'https://www.tourmyindia.com/states/goa/image/vagator-beach-banner.webp'),
                ])),
            DataTable(sortColumnIndex: 1, columns: const [
              DataColumn(label: Text("Goan beach name")),
              DataColumn(label: Text("Place"))
            ], rows: [
              const DataRow(
                  cells: [DataCell(Text('Baga')), DataCell(Text('Calangute'))]),
              const DataRow(
                  cells: [DataCell(Text('keri')), DataCell(Text('keri'))]),
              const DataRow(
                  cells: [DataCell(Text('Morgim')), DataCell(Text('Morgin'))]),
              const DataRow(cells: [
                DataCell(Text('Mirammar')),
                DataCell(Text('Panjim'))
              ]),
            ]),
            Stack(children: [
              Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                height: 200,
                width: 400,
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
                child: Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.orange,
                      Colors.amber,
                    ])),
                    child: Text(
                      '  Welcome Goa  ',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              )
            ])
          ]),
        )));
  }
}
