import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/providers/theme_rovider.dart';
import 'package:pregerencias_de_usuario/shared_preferences/preferences.dart';
import 'package:pregerencias_de_usuario/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName ='Settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

/*
  bool isDarkmode = true;
  int gender = 1;
  String name = 'Eduardo';
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Settings'),

      ),
      drawer: SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          //controller: controller, // Optional
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ajustes', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
              Divider(),
              SwitchListTile.adaptive(
                  value: Preferences.isDarkmode,
                  title: Text('Darkmode'),
                  onChanged: (value ){
                  Preferences.isDarkmode = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  value ? themeProvider.setDarkMode() : themeProvider.setLightMode();

                    setState(() {print(Preferences.isDarkmode);}); //Redibuja el estado del StatefullW cuando cambia su value, es solo un print de prueba. Se puede eliminar

                },
              ),
              Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: Text('Masculino'),
                  onChanged: (value){
                  Preferences.gender= value ?? 1; //Preferences.gender es igual al value y si es nulo ?? entonces será igual a 1
                  setState(() {});
                  },
              ),
              Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: Text('Femenino'),
                onChanged: (value){
                  Preferences.gender= value ?? 2;
                  setState(() {});
                },
              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: ( value ) {
                    Preferences.name = value;
                    setState(() { });
                  },
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ],

          ),
        ),
      ),
      );
  }
}
