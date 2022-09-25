import 'package:flutter/material.dart';

class CategorySpend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategorySpendState();
  }
}

class _CategorySpendState extends State<CategorySpend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Gastos por Categoría",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0.5,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Theme.of(context).primaryColor,
                ])),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Tus Gastos:',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 4.0),
                            alignment: Alignment.topLeft,
                          ),
                          Card(
                            child: Container(
                              color: Color.fromARGB(255, 52, 52, 56),
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      ...ListTile.divideTiles(
                                        color: Colors.white,
                                        tiles: [
                                          ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 4),
                                            title: Text("Comida:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text("\$628 este mes",
                                                style: TextStyle(
                                                    color: Colors.greenAccent)),
                                          ),
                                          ListTile(
                                            title: Text("Transporte:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text("\$1858 este mes",
                                                style: TextStyle(
                                                    color: Colors.greenAccent)),
                                          ),
                                          ListTile(
                                            title: Text("Servicios:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text("\$725 este mes",
                                                style: TextStyle(
                                                    color: Colors.greenAccent)),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.add,
                                                color: Colors.white, size: 30),
                                            title: Text("Agregar categoría",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Tus Presupuestos:',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            child: Container(
                              color: Color.fromARGB(255, 52, 52, 56),
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      ...ListTile.divideTiles(
                                        color: Colors.white,
                                        tiles: [
                                          ListTile(
                                            leading: Icon(Icons.check,
                                                color: Colors.green, size: 25),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 12,
                                                    vertical: 4),
                                            title: Text("Comida:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text(
                                                "\$628 de 2500 usado este mes",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.warning,
                                                color: Colors.yellow, size: 25),
                                            title: Text("Transporte:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text(
                                                "\$1858 de 2000 usado este mes",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.check,
                                                color: Colors.green, size: 25),
                                            title: Text("Servicios:",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                            subtitle: Text(
                                                "\$725 de 1500 usado este mes",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.add,
                                                color: Colors.white, size: 30),
                                            title: Text("Agregar presupuesto",
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
