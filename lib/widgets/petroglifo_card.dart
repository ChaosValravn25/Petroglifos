import 'package:flutter/material.dart';

class PetroglifoCard extends StatelessWidget {
  final String nombre;
  final String sitio;
  final String estado;
  final VoidCallback? onTap;

  const PetroglifoCard({
    super.key,
    required this.nombre,
    required this.sitio,
    required this.estado,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),

        leading: const CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xFF8D6E63),
          child: Icon(
            Icons.landscape,
            color: Colors.white,
            size: 30,
          ),
        ),

        title: Text(
          nombre,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sitio,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 6),

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

        trailing: const Icon(Icons.arrow_forward_ios),

        onTap: onTap,
      ),
    );
  }
}