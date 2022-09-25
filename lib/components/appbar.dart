import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/otherDetailsDivider.dart';
import 'package:flutter_svg/svg.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 15.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "BANORTE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600),
          ),
          SvgPicture.asset(
            ('assets/hi.svg'),
            color: Colors.redAccent,
            alignment: Alignment(50, 0),
          )
        ],
      ),
    );
  }
}
