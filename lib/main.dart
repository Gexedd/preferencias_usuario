import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/providers/theme_rovider.dart';
import 'package:pregerencias_de_usuario/screens/screens.dart';
import 'package:pregerencias_de_usuario/shared_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();                //Inicio Las preferencias.
  runApp(MultiProvider(                   //Corro la aplicación con el provider en el nivel mas alto construyendo un multiprovider
    providers: [                          //Especifico a modo de lista el provider que uare
      ChangeNotifierProvider(
          create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode),
      ),
    ],
    child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen()
      },

      theme:Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
