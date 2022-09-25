import 'package:flutter/material.dart';
import 'package:flutter_application_3/utilities/themeColors.dart';
import 'package:flutter_application_3/utilities/themeStyles.dart';
import 'package:flutter_svg/svg.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
        width: 380,
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/tarjeta.png"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  bottom: 32.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 22),
                        child: Text("\$692.52",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            )),
                      ),
                    ),
                    Text('Marián Charles',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        )),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text('4756',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: SvgPicture.asset(
                            'assets/card-dots.svg',
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: SvgPicture.asset('assets/card-dots.svg',
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text('9018',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
