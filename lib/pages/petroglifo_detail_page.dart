import 'package:flutter/material.dart';

class PetroglifoDetailPage extends StatelessWidget {
  const PetroglifoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Detalle del Petroglifo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Imagen principal
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 220,
                width: double.infinity,
                color: Colors.grey.shade400,
                child: const Icon(
                  Icons.image,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Petroglifo Piedra del Sol",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            _infoCard(
              "Sitio Arqueológico",
              "Sitio Maule Norte",
            ),

            _infoCard(
              "Comuna",
              "Talca",
            ),

            _infoCard(
              "Región",
              "Región del Maule",
            ),

            _infoCard(
              "Estado de Conservación",
              "Bueno",
            ),

            _infoCard(
              "Tipo",
              "Geométrico",
            ),

            _infoCard(
              "Coordenadas",
              "-35.4262, -71.6554",
            ),

            const SizedBox(height: 20),

            const Text(
              "Descripción",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Este petroglifo corresponde a un conjunto de grabados "
              "rupestres presentes en un afloramiento rocoso. "
              "Representa figuras geométricas y antropomorfas propias "
              "de las culturas prehispánicas del Maule.",

              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Galería",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              height: 120,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  4,
                  (index) => Container(
                    width: 140,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.image,
                      size: 45,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _infoCard(String titulo, String valor) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      child: ListTile(
        title: Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(valor),
      ),
    );
  }
}