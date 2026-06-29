import 'package:flutter/material.dart';

class ReportarPage extends StatelessWidget {
  const ReportarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Reportar Petroglifo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Imagen
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

            TextField(
              decoration: InputDecoration(
                labelText: "Nombre del Petroglifo",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Sitio Arqueológico",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Comuna",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            DropdownButtonFormField<String>(
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
              onChanged: null,
              decoration: const InputDecoration(
                labelText: "Estado de Conservación",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: "Descripción",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              decoration: const InputDecoration(
                labelText: "Coordenadas",
                hintText: "-35.4262, -71.6554",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Enviar reporte
                },
                icon: const Icon(Icons.send),
                label: const Text(
                  "Enviar Reporte",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.cancel),
                label: const Text(
                  "Cancelar",
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