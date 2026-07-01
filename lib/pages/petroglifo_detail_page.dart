import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/info_card.dart';

class PetroglifoDetailPage extends StatelessWidget {
  const PetroglifoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Detalle del Petroglifo",
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del petroglifo
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                height: 220,
                color: Colors.grey.shade400,
                child: const Icon(
                  Icons.landscape,
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

            const InfoCard(
              title: "Sitio",
              value: "Sitio Maule Norte",
              icon: Icons.location_on,
            ),

            const InfoCard(
              title: "Estado",
              value: "Buen estado",
              icon: Icons.verified,
            ),

            const InfoCard(
              title: "Tipo",
              value: "Geométrico",
              icon: Icons.category,
            ),

            const InfoCard(
              title: "Coordenadas",
              value: "-35.4262, -71.6554",
              icon: Icons.place,
            ),

            const SizedBox(height: 20),

            const Text(
              "Descripción",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Este petroglifo corresponde a un conjunto de grabados "
              "rupestres pertenecientes a pueblos originarios del Maule. "
              "Presenta figuras geométricas y antropomorfas conservadas en "
              "buen estado, siendo uno de los registros más representativos "
              "de la zona.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}