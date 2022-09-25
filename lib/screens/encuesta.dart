import 'package:flutter/material.dart';

class SurveyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SurveyScreenState();
  }
}

class SurveyScreenState extends State<SurveyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget Q1() {
    return TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.white),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ));
  }

  Widget Q2() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget Q3() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  Widget Q4() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Url',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Compártenos tu Opinión",
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
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Q1(),
                Q2(),
                Q3(),
                Q4(),
                SizedBox(height: 100),
                ButtonTheme(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
