import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7C2A3),

      appBar: AppBar(
        backgroundColor: const Color(0xFF8D6E63),
        foregroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Petroglifos Maule',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              // Ir a Login
            },
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),

      body: Center(
        child: SizedBox(
          width: 340,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Barra de búsqueda
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "Buscar",
                  prefixIcon: const Icon(Icons.search),

                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.filter_alt_outlined),
                        SizedBox(width: 5),
                        Text("Filtros"),
                      ],
                    ),
                  ),

                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // Abrir lista de petroglifos
                  },
                  child: const Text(
                    "Petroglifos",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // Abrir lista de sitios
                  },
                  child: const Text(
                    "Sitios",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    // Abrir formulario de reporte
                  },
                  child: const Text(
                    "Reportar Petroglifo",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}