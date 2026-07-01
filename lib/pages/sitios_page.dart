import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/sitio_card.dart';

import 'sitio_detail_page.dart';

class SitiosPage extends StatelessWidget {
  const SitiosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Sitios Arqueológicos",
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SearchBarWidget(
              hintText: "Buscar sitio",
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  SitioCard(
                    nombre: "Sitio Maule Norte",
                    comuna: "Talca",
                    cantidadPetroglifos: 12,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SitioDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  SitioCard(
                    nombre: "Reserva Los Riscos",
                    comuna: "San Clemente",
                    cantidadPetroglifos: 8,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SitioDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  SitioCard(
                    nombre: "Valle del Maule",
                    comuna: "Linares",
                    cantidadPetroglifos: 21,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SitioDetailPage(),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 15),

                  SitioCard(
                    nombre: "Río Claro",
                    comuna: "Río Claro",
                    cantidadPetroglifos: 5,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const SitioDetailPage(),
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