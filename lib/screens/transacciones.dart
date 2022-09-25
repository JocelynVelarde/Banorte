import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/KeyPad.dart';

class CodeUnlock extends StatefulWidget {
 @override
 _CodeUnlockState createState() => _CodeUnlockState();
}

class _CodeUnlockState extends State {

 String displayCode;
 TextEditingController pinController = TextEditingController();

 @override
 void initState() {
   // TODO: implement initState
   super.initState();
   displayCode = " ";
 }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Text('Transacciones'),
       backgroundColor: Color.fromARGB(0, 33, 149, 243),
     ),
     body: Builder(
       builder: (context) =>
       Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Padding(
                 padding: EdgeInsets.only(bottom: 20),
               child: Text(
                 displayCode,
                 style: TextStyle(
                   color: Color.fromARGB(0, 255, 255, 255),
                   fontSize: 50,
                   fontWeight: FontWeight.bold
                   // fontFamily: AppTextStyle.robotoBold
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left:50, right:50, bottom: 15),
               child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                     color: Color.fromARGB(0, 255, 172, 64),
                     border: Border.all(color: Color.fromARGB(0, 255, 82, 82), width: 0.5)),
                 child: Padding(
                   padding: EdgeInsets.only(left: 15),
                   child: TextField(
                     controller: pinController,
                     readOnly: true,
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Color.fromARGB(255, 255, 255, 255),
                       fontSize: 26,
                       // fontWeight: FontWeight.bold
                       // fontFamily: AppTextStyle.robotoBold
                     ),
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Ingrese Cantidad', 
                       hintStyle: TextStyle(color: Colors.white),
                     ),
                     // controller: userDisplayName,
                   ),
                 ),
               ),
             ),
             KeyPad(
               pinController: pinController,
               isPinLogin: false,
               onChange: (String pin) {
                 pinController.text = pin;
                 print('${pinController.text}');
                 setState(() {});
               },
               onSubmit: (String pin) {
                 if (pinController.text == "\$0.00") {
                  showInSnackBar('Ingrese una cantidad valida');
                 }
                 else{
                  // Link
                 }
               },
             ),
           ],
         ),
       ),
     ),
   );
 }

 void showInSnackBar(String value) {
   ScaffoldMessenger.of(context).showSnackBar(new SnackBar(content: new Text(value)));
 }
}