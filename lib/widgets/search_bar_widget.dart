import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;
  final VoidCallback? onFilterPressed;
  final bool readOnly;

  const SearchBarWidget({
    super.key,
    this.hintText = "Buscar",
    this.onFilterPressed,
    this.readOnly = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText,

        prefixIcon: const Icon(Icons.search),

        suffixIcon: IconButton(
          icon: const Icon(Icons.filter_alt_outlined),
          tooltip: "Filtros",
          onPressed: onFilterPressed,
        ),

        filled: true,
        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}