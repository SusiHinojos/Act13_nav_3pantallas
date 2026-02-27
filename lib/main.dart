import 'package:flutter/material.dart';
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';

bool isLoggedIn = false;
const IconData attractionsIcon = IconData(0xe0b4, fontFamily: 'MaterialIcons');
const Color purpleTheme = Colors.deepPurple;
const Color purpleLight = Color(0xFFF3E5F5);

void main() => runApp(const JardinMaravillasApp());

class JardinMaravillasApp extends StatelessWidget {
  const JardinMaravillasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jardín de las Maravillas',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      initialRoute: isLoggedIn ? '/inicio' : '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/inicio': (context) => const InicioPage(),
        '/atracciones': (context) => const AtraccionesPage(),
      },
    );
  }
}