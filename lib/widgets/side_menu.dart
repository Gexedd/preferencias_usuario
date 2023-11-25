import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(), //Extraje el wiget y lo puse abajo para irlo trabajando. Aqui se le llama
          ListTile(
            leading: Icon(Icons.pages_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text('People'),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
                  //Navigator.pop(context);
                  //Navigator.pushNamed(context, SettingsScreen.routeName);
                  Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            },
          )

        ],
      ),

    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: BoxDecoration( image: DecorationImage(image: AssetImage('assets/menu-img.jpg'),
      fit: BoxFit.cover)

    ),
    );
  }
}
