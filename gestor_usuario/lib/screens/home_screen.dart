import 'package:flutter/material.dart';
import 'package:gestor_usuario/widgets/widgets.dart';
import 'package:gestor_usuario/share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routename = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screens'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkmode}'),
          const Divider(),
          Text('Genero: ${Preferences.gender}'),
          const Divider(),
          Text('Nombre de Usuario: ${Preferences.name}'),
          const Divider(),
        ],
      ),
    );
  }
}
