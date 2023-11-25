import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/screens/screens.dart';

void main() => runApp(MyApp() );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: ( _ )=> const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen()
      },
    );
  }
}
