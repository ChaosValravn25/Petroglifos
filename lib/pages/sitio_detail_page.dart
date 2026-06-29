import 'package:flutter/material.dart';

class SitioDetailPage extends StatelessWidget {
  const SitioDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        title: const Text(
          "Detalle del Sitio",
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
              "Sitio Arqueológico Maule Norte",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            _infoCard(
              "Comuna",
              "Talca",
            ),

            _infoCard(
              "Región",
              "Región del Maule",
            ),

            _infoCard(
              "Cantidad de Petroglifos",
              "12",
            ),

            _infoCard(
              "Estado del Sitio",
              "Protegido",
            ),

            _infoCard(
              "Coordenadas",
              "-35.4262, -71.6554",
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
              "Este sitio arqueológico reúne un conjunto de petroglifos "
              "ubicados en un afloramiento rocoso de gran importancia "
              "histórica y cultural para la Región del Maule. "
              "El lugar es utilizado con fines educativos, turísticos "
              "y de investigación.",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Petroglifos del Sitio",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            _petroglifoItem("Petroglifo Piedra del Sol"),
            _petroglifoItem("Petroglifo El Cóndor"),
            _petroglifoItem("Petroglifo Las Manos"),
            _petroglifoItem("Petroglifo Río Claro"),
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

  static Widget _petroglifoItem(String nombre) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Color(0xFF8D6E63),
          child: Icon(
            Icons.landscape,
            color: Colors.white,
          ),
        ),
        title: Text(nombre),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Ir al detalle del petroglifo
        },
      ),
    );
  }
}