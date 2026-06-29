import 'package:flutter/material.dart';

class PetroglifosPage extends StatelessWidget {
  const PetroglifosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Petroglifos",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // Barra de búsqueda
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Buscar petroglifo",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.filter_alt_outlined),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: const [

                  PetroglifoCard(
                    nombre: "Petroglifo Piedra del Sol",
                    sitio: "Sitio Arqueológico Maule Norte",
                    estado: "Buen estado",
                  ),

                  SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo El Cóndor",
                    sitio: "Reserva Los Riscos",
                    estado: "Con desgaste",
                  ),

                  SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo Las Manos",
                    sitio: "Valle del Maule",
                    estado: "Excelente estado",
                  ),

                  SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo Río Claro",
                    sitio: "Río Claro",
                    estado: "En restauración",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PetroglifoCard extends StatelessWidget {

  final String nombre;
  final String sitio;
  final String estado;

  const PetroglifoCard({
    super.key,
    required this.nombre,
    required this.sitio,
    required this.estado,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [

            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF8D6E63),
              child: Icon(
                Icons.landscape,
                color: Colors.white,
                size: 30,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    sitio,
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    estado,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            IconButton(
              onPressed: () {
                // Abrir detalle del petroglifo
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}