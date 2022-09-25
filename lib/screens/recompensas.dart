import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Tus Puntos",
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
                Theme.of(context).colorScheme.error,
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
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromARGB(255, 28, 29, 30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.auto_awesome_rounded,
                      size: 70,
                      color: Color.fromARGB(255, 235, 220, 91),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Puntos:',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '900',
                    style: TextStyle(
                        fontSize: 60,
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
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.star,
                                              color: Colors.white, size: 30),
                                          title: Text("Nivel 2",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          subtitle: Text("900 de 1500 puntos",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.calendar_month,
                                              color: Colors.white, size: 30),
                                          title: Text("400",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          subtitle: Text(
                                              "Puntos acumulados este mes",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        ListTile(
                                          leading: Icon(
                                              Icons.arrow_circle_up_outlined,
                                              color: Colors.white,
                                              size: 30),
                                          title: Text("Siguiente: Nivel 3",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          subtitle: Text("En 600 puntos",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                        ListTile(
                                          leading: Icon(
                                              Icons.assistant_photo_rounded,
                                              color: Colors.white,
                                              size: 30),
                                          title: Text("Siguiente recompensa:",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          subtitle: Text("hhh",
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
      ),
    );
  }
}
