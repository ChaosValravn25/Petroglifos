import 'package:flutter/material.dart';

class SitiosPage extends StatelessWidget {
  const SitiosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Sitios Arqueológicos",
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
                hintText: "Buscar sitio",
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

                  SitioCard(
                    nombre: "Sitio Maule Norte",
                    comuna: "Talca",
                    cantidad: 12,
                  ),

                  SizedBox(height: 15),

                  SitioCard(
                    nombre: "Reserva Los Riscos",
                    comuna: "San Clemente",
                    cantidad: 8,
                  ),

                  SizedBox(height: 15),

                  SitioCard(
                    nombre: "Valle del Maule",
                    comuna: "Linares",
                    cantidad: 21,
                  ),

                  SizedBox(height: 15),

                  SitioCard(
                    nombre: "Río Claro",
                    comuna: "Río Claro",
                    cantidad: 5,
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

class SitioCard extends StatelessWidget {

  final String nombre;
  final String comuna;
  final int cantidad;

  const SitioCard({
    super.key,
    required this.nombre,
    required this.comuna,
    required this.cantidad,
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
                Icons.location_on,
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
                    "Comuna: $comuna",
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "$cantidad petroglifos registrados",
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
                // Ir al detalle del sitio
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}