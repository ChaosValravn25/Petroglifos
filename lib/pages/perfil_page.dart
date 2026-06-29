import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Mi Perfil",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
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
                color: Colors.white,
                size: 70,
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

            Card(
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Correo"),
                subtitle: const Text("usuario@email.com"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.badge),
                title: const Text("Rol"),
                subtitle: const Text("Investigador"),
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text("Región"),
                subtitle: const Text("Región del Maule"),
              ),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Editar perfil
                },
                icon: const Icon(Icons.edit),
                label: const Text(
                  "Editar Perfil",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Mis reportes
                },
                icon: const Icon(Icons.assignment),
                label: const Text(
                  "Mis Reportes",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Cerrar sesión
                },
                icon: const Icon(Icons.logout),
                label: const Text(
                  "Cerrar Sesión",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}