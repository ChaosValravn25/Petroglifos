import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/info_card.dart';

import 'petroglifo_detail_page.dart';

class SitioDetailPage extends StatelessWidget {
  const SitioDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Detalle del Sitio",
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del sitio
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

            const InfoCard(
              title: "Comuna",
              value: "Talca",
              icon: Icons.location_city,
            ),

            const InfoCard(
              title: "Región",
              value: "Región del Maule",
              icon: Icons.public,
            ),

            const InfoCard(
              title: "Cantidad de Petroglifos",
              value: "12",
              icon: Icons.landscape,
            ),

            const InfoCard(
              title: "Estado del Sitio",
              value: "Protegido",
              icon: Icons.verified,
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

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFF8D6E63),
                  child: Icon(
                    Icons.landscape,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Petroglifo Piedra del Sol"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetroglifoDetailPage(),
                    ),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFF8D6E63),
                  child: Icon(
                    Icons.landscape,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Petroglifo El Cóndor"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetroglifoDetailPage(),
                    ),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFF8D6E63),
                  child: Icon(
                    Icons.landscape,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Petroglifo Las Manos"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetroglifoDetailPage(),
                    ),
                  );
                },
              ),
            ),

            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xFF8D6E63),
                  child: Icon(
                    Icons.landscape,
                    color: Colors.white,
                  ),
                ),
                title: const Text("Petroglifo Río Claro"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetroglifoDetailPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}