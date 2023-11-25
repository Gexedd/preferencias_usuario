import 'package:flutter/material.dart';
import 'package:pregerencias_de_usuario/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName ='Settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool isDarkmode = true;
  int gender = 1;
  String name = 'Eduardo';

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
                  value: isDarkmode,
                  title: Text('Darkmode'),
                onChanged: (value ){
                    isDarkmode = value;
                    setState(() {print(isDarkmode);}); //Redibuja el estado del StatefullW cuando cambia su value

                },
              ),
              Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: gender,
                  title: Text('Masculino'),
                  onChanged: (value){
                  gender = value ?? 1;
                  setState(() {});
                  },
              ),
              Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: Text('Femenino'),
                onChanged: (value){
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: 'Edd',
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
