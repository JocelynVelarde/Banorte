import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/settings_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
appBar: PreferredSize( //wrap with PreferredSize
                preferredSize: Size.fromHeight(100.0), //height of appbar
                child: AppBar(
                  title:Text("Ajustes ",style: TextStyle(fontSize: 50),), //appbar title
                  backgroundColor: Colors.redAccent, //appbar background color
                  
                )
          ),
      
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             

              const SizedBox(height: 40),
              SettingsTile(
                icon: Icons.account_box_rounded,
                title: "Perfil",
                onTap: () {},
              ),
              const SizedBox(
                height: 40  ,
              ),
              SettingsTile(
                icon: Icons.support_agent,
                title: "Soporte Tecnico",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                icon: Icons.mood,
                title: "Modalidad",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                icon: Icons.language,
                title: "Idioma",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                icon: Icons.logout_rounded,
                title: "Cerrar Sesion",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
