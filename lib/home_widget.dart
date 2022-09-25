import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home.dart';
import 'package:flutter_application_3/screens/recompensas.dart';
import 'package:flutter_application_3/screens/settings_screen.dart';
import 'package:flutter_application_3/screens/transacciones.dart';
import 'package:flutter_application_3/screens/categories.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      CodeUnlock(),
      SettingsScreen(),
      ProfilePage(),
      CategorySpend()
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home-icon.svg',
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/transactions-icon.svg',
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/smiley-icon.svg',
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/smiley-icon.svg',
              color: Colors.white,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
