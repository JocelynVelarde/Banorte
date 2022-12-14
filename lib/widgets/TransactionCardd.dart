import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/transactionPage.dart';
import 'package:flutter_application_3/utilities/themeStyles.dart';

class TransactionCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
  TransactionCard({
    this.color,
    this.letter,
    this.price,
    this.subTitle,
    this.title,
  });
  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TransactionPage(
                color: widget.color,
                title: widget.title,
                subTitle: widget.subTitle,
                price: widget.price,
                letter: widget.letter,
              ),
            ),
          );
        },
        child: Container(
          height: 62.0,
          width: 343.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 44.0,
                        width: 44.0,
                        decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Center(child: Icon(Icons.sell)),
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                              )),
                          Text(
                            widget.subTitle,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.price,
                          style: TextStyle(color: Colors.redAccent)),
                      SizedBox(width: 4.0),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.7),
                thickness: 0.5,
                endIndent: 16.0,
                indent: 16.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
