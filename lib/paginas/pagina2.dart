import 'package:flutter/material.dart';
import '../main.dart';
import 'custom_bar.dart'; // <--- IMPORTAMOS LA BARRA SEPARADA

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: purpleTheme,
        leading: const Icon(attractionsIcon, color: Colors.white),
        title: const Text("Jardín de las Maravillas", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Donde la diversión cobra vida", style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic, color: purpleTheme)),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(border: Border.all(color: purpleTheme, width: 2), borderRadius: BorderRadius.circular(20)),
              child: const Text("Vive momentos inolvidables en un parque lleno de magia.", textAlign: TextAlign.center, style: TextStyle(color: purpleTheme, fontSize: 16)),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network('https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/rueda.jpg', height: 200, width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            const Text("Lidia Susana Hinojos Sierra 6J", style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(), // <--- USAMOS EL WIDGET
    );
  }
}