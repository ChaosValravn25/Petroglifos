import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showLogin;
  final VoidCallback? onLoginPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showLogin = false,
    this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF8D6E63),
      foregroundColor: Colors.white,
      elevation: 2,

      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),

      actions: showLogin
          ? [
              TextButton.icon(
                onPressed: onLoginPressed,
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
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}