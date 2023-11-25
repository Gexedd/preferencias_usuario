import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/screens/screens.dart';
import 'package:pregerencias_de_usuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.cyan,
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children: [
          Text('isDarkmode'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Nombre de usuario: '),
          Divider()
        ],
      ),
    );
  }
}
