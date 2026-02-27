import 'package:flutter/material.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: purpleTheme,
        centerTitle: true,
        title: const Text(
          'Lidia Susana Hinojos Sierra 6J',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text('Jardín de las Maravillas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: purpleTheme)),
            const Text('Inicio de sesión', style: TextStyle(fontSize: 18, color: Colors.black54)),
            const SizedBox(height: 30),
            _crearCampo(" Usuario", Icons.person, _usuarioController),
            const SizedBox(height: 20),
            _crearCampo(" Contraseña", Icons.lock, _passwordController, obscure: true),
            const SizedBox(height: 20),
            _crearCampo(" Confirmar Contraseña", Icons.lock_reset, _confirmarController, obscure: true),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: purpleTheme),
                onPressed: () {
                  if (_passwordController.text == _confirmarController.text && _usuarioController.text.isNotEmpty) {
                    isLoggedIn = true;
                    Navigator.pushReplacementNamed(context, '/inicio');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Verifica tus datos')));
                  }
                },
                child: const Text('INGRESAR', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearCampo(String label, IconData icon, TextEditingController controller, {bool obscure = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: purpleTheme)),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: obscure,
          decoration: InputDecoration(
            filled: true, fillColor: purpleLight,
            prefixIcon: Icon(icon, color: purpleTheme),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          ),
        ),
      ],
    );
  }
}