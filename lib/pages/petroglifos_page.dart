import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/petroglifo_card.dart';

import 'petroglifo_detail_page.dart';

class PetroglifosPage extends StatelessWidget {
  const PetroglifosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Petroglifos",
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchBarWidget(
              hintText: "Buscar petroglifo",
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  PetroglifoCard(
                    nombre: "Petroglifo Piedra del Sol",
                    sitio: "Sitio Maule Norte",
                    estado: "Buen estado",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PetroglifoDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo El Cóndor",
                    sitio: "Reserva Los Riscos",
                    estado: "Estado regular",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PetroglifoDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo Las Manos",
                    sitio: "Valle del Maule",
                    estado: "Buen estado",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PetroglifoDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  PetroglifoCard(
                    nombre: "Petroglifo Río Claro",
                    sitio: "Río Claro",
                    estado: "Requiere restauración",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const PetroglifoDetailPage(),
                        ),
                      );
                    },
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