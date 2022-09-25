import 'package:flutter/material.dart';
import 'package:flutter_application_3/utilities/themeColors.dart';
import 'package:flutter_application_3/utilities/themeStyles.dart';
import 'package:flutter_application_3/widgets/cardInPage.dart';
import 'package:flutter_application_3/widgets/otherDetailsDivider.dart';
import 'package:flutter_svg/svg.dart';

class TransactionPage extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  TransactionPage({
    this.color,
    this.letter,
    this.price,
    this.subTitle,
    this.title,
  });
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Enviadas'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 28, 29, 30),
        child: Stack(
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Transacción Saliente',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ],
                  ),
                ),
                CardInPage(
                  color: widget.color,
                  title: widget.title,
                  subTitle: widget.subTitle,
                  price: widget.price,
                  letter: widget.letter,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text('Detalles',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: SvgPicture.asset('assets/bankTransfer-icon.svg'),
                      ),
                      Text('Transferencia Bancaria',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Container(
                          height: 32.0,
                          width: 74.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child:
                                  Text('#finance', style: ThemeStyles.tagText)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Container(
                          height: 32.0,
                          width: 74.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child:
                                  Text('#fintory', style: ThemeStyles.tagText)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Container(
                          height: 32.0,
                          width: 74.0,
                          decoration: BoxDecoration(
                            color: ThemeColors.lightGrey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                              child:
                                  Text('#design', style: ThemeStyles.tagText)),
                        ),
                      ),
                      SvgPicture.asset('assets/edit-icon.svg'),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('IBAN',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('DE56 3902 0000 1203 2339 39',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BIC',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('DUISDE33XX',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Clave de Contabilización',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('153',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Posting Text',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('Landing Page',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Código de Propósito',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('OLOA',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Referencia SEPA',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.redAccent)),
                      SizedBox(height: 5.0),
                      Text('DE56 3902 0000 1203 2339 39',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ],
                  ),
                ),
                OtherDetailsDivider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
