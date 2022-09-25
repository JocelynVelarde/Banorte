import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/appbar.dart';

import 'package:flutter_application_3/components/cards.dart';
import 'package:flutter_application_3/components/recentTransactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(),
            CardsList(),
            RecentTransactions(),
          ],
        ),
      ),
    );
  }
}
