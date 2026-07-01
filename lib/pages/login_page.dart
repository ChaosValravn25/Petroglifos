import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/primary_button.dart';

import 'perfil_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: const CustomAppBar(
        title: "Iniciar Sesión",
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),

          child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 100,
                color: Color(0xFF8D6E63),
              ),

              const SizedBox(height: 20),

              const Text(
                "Bienvenido",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Correo electrónico",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              PrimaryButton(
                text: "Iniciar Sesión",
                icon: Icons.login,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PerfilPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 15),

              PrimaryButton(
                text: "Volver",
                icon: Icons.arrow_back,
                outlined: true,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Función disponible próximamente.",
                      ),
                    ),
                  );
                },
                child: const Text(
                  "¿Olvidaste tu contraseña?",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}