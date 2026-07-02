import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'theme.dart';
import 'services/database_service.dart';
import 'services/connectivity_service.dart';
import 'screens/public/home_screen.dart';
import 'screens/public/catalog_screen.dart';
import 'screens/public/detail_screen.dart';
import 'screens/admin/login_screen.dart';
import 'screens/admin/dashboard_screen.dart';
import 'screens/admin/reportes_screen.dart';
import 'screens/admin/sitios_screen.dart';
import 'screens/admin/usuarios_screen.dart';
import 'screens/admin/petroglifo_form.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseService.instance.init();
  runApp(const PetroglifosMauleApp());
}

class PetroglifosMauleApp extends StatelessWidget {
  const PetroglifosMauleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [

        // ── Visor público con NavigationBar inferior ──
        ShellRoute(
          builder: (context, state, child) => _PublicShell(child: child),
          routes: [
            GoRoute(path: '/',        builder: (_, __) => const PublicHomeScreen()),
            GoRoute(path: '/catalog', builder: (_, __) => const CatalogScreen()),
          ],
        ),

        // Detalle (fuera del shell → tiene su propio SliverAppBar)
        GoRoute(
          path: '/detail/:id',
          builder: (context, state) =>
              DetailScreen(petroId: state.pathParameters['id']!),
        ),

        // ── Área administrativa ───────────────────────
        GoRoute(path: '/login',      builder: (_, __) => const LoginScreen()),
        GoRoute(path: '/dashboard',  builder: (_, __) => const DashboardScreen()),
        GoRoute(path: '/reportes',   builder: (_, __) => const ReportesScreen()),
        GoRoute(path: '/sitios',     builder: (_, __) => const SitiosScreen()),
        GoRoute(path: '/usuarios',   builder: (_, __) => const UsuariosScreen()),
        GoRoute(path: '/nueva-ficha',builder: (_, __) => const PetroglifoForm()),
      ],
    );

    return MaterialApp.router(
      title: 'Petroglifos Maule',
      theme: AppTheme.lightTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      // ConnectivityBanner envuelve TODA la app → banner rojo en sin conexión
      builder: (context, child) => ConnectivityBanner(child: child ?? const SizedBox()),
    );
  }
}

// ─────────────────────────────────────────────
// Shell del visor público
// NavigationBar de 3 ítems en la parte inferior
// ─────────────────────────────────────────────

class _PublicShell extends StatelessWidget {
  final Widget child;
  const _PublicShell({required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final int idx  = location.startsWith('/catalog') ? 1 : 0;

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: idx,
        backgroundColor: Colors.white,
        elevation: 0,
        indicatorColor: const Color(0xFF2D5A27).withOpacity(0.12),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (i) {
          if (i == 0) context.go('/');
          if (i == 1) context.go('/catalog');
          if (i == 2) context.push('/login');
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Color(0xFF2D5A27)),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view, color: Color(0xFF2D5A27)),
            label: 'Catálogo',
          ),
          NavigationDestination(
            icon: Icon(Icons.manage_accounts_outlined),
            selectedIcon: Icon(Icons.manage_accounts, color: Color(0xFF2D5A27)),
            label: 'Administrar',
          ),
        ],
      ),
    );
  }
}
