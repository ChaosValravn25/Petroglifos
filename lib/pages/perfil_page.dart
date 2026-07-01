import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/info_card.dart';
import '../widgets/primary_button.dart';

import 'home_page.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Mi Perfil",
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF8D6E63),
              child: Icon(
                Icons.person,
                size: 70,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Nombre del Usuario",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Investigador",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 30),

            const InfoCard(
              title: "Correo",
              value: "usuario@email.com",
              icon: Icons.email,
            ),

            const InfoCard(
              title: "Rol",
              value: "Investigador",
              icon: Icons.badge,
            ),

            const InfoCard(
              title: "Región",
              value: "Región del Maule",
              icon: Icons.location_on,
            ),

            const SizedBox(height: 30),

            PrimaryButton(
              text: "Editar Perfil",
              icon: Icons.edit,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Función disponible próximamente."),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            PrimaryButton(
              text: "Mis Reportes",
              icon: Icons.assignment,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Función disponible próximamente."),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            PrimaryButton(
              text: "Cerrar Sesión",
              icon: Icons.logout,
              outlined: true,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HomePage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}