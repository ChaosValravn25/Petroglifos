import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/primary_button.dart';

class ReportarPage extends StatelessWidget {
  const ReportarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Reportar Petroglifo",
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Espacio para la fotografía
            Center(
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Agregar fotografía",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const TextField(
              decoration: InputDecoration(
                labelText: "Nombre del Petroglifo",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: "Sitio Arqueológico",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: "Comuna",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: "Estado de Conservación",
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: "Bueno",
                  child: Text("Bueno"),
                ),
                DropdownMenuItem(
                  value: "Regular",
                  child: Text("Regular"),
                ),
                DropdownMenuItem(
                  value: "Dañado",
                  child: Text("Dañado"),
                ),
              ],
              onChanged: (value) {},
            ),

            const SizedBox(height: 15),

            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: "Descripción",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            const TextField(
              decoration: InputDecoration(
                labelText: "Coordenadas",
                hintText: "-35.4262, -71.6554",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            PrimaryButton(
              text: "Enviar Reporte",
              icon: Icons.send,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Reporte enviado correctamente"),
                    duration: Duration(seconds: 2),
                  ),
                );

                Future.delayed(const Duration(seconds: 2), () {
                  if (context.mounted) {
                    Navigator.pop(context);
                  }
                });
              },
            ),

            const SizedBox(height: 15),

            PrimaryButton(
              text: "Cancelar",
              icon: Icons.cancel,
              outlined: true,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}