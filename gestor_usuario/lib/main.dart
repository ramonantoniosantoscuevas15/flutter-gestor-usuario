import 'package:flutter/material.dart';
import 'package:gestor_usuario/providers/theme_provider.dart';
import 'package:gestor_usuario/screens/screens.dart';
import 'package:gestor_usuario/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> ThemeProvider(isDarkmode: Preferences.isDarkmode))
    ],
    child: const MyApp(),
    )
    
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routename,
      routes: {
        HomeScreen.routename: (_) => const HomeScreen(),
        SettingScreen.routename: (_) => const SettingScreen(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
