import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/primary_button.dart';

import 'login_page.dart';
import 'petroglifos_page.dart';
import 'sitios_page.dart';
import 'reportar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: CustomAppBar(
        title: "Petroglifos Maule",
        showLogin: true,
        onLoginPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const LoginPage(),
            ),
          );
        },
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SearchBarWidget(
                hintText: "Buscar",
              ),

              const SizedBox(height: 40),

              PrimaryButton(
                text: "Petroglifos",
                icon: Icons.landscape,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PetroglifosPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              PrimaryButton(
                text: "Sitios",
                icon: Icons.location_on,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SitiosPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              PrimaryButton(
                text: "Reportar Petroglifo",
                icon: Icons.add_location_alt,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ReportarPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}