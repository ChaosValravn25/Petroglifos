import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

// ─────────────────────────────────────────────
// ConnectivityService
// Detecta el estado de red en tiempo real.
// Usado en toda la app para mostrar banners
// de "sin conexión" y para el modo offline.
// ─────────────────────────────────────────────

class ConnectivityService {
  // Singleton
  static ConnectivityService? _instance;
  static ConnectivityService get instance =>
      _instance ??= ConnectivityService._();
  ConnectivityService._();

  final _connectivity = Connectivity();

  // Stream público que expone el estado actual
  late final Stream<List<ConnectivityResult>> onConnectivityChanged =
      _connectivity.onConnectivityChanged.asBroadcastStream();

  // Consulta puntual del estado actual
  Future<List<ConnectivityResult>> get currentStatus =>
      _connectivity.checkConnectivity();

  /// true si hay alguna conexión activa (WiFi O datos móviles)
  Future<bool> get isConnected async {
    final result = await currentStatus;
    return result.any((r) =>
        r == ConnectivityResult.wifi ||
        r == ConnectivityResult.mobile ||
        r == ConnectivityResult.ethernet);
  }

  /// true específicamente en WiFi
  Future<bool> get isOnWifi async {
    final result = await currentStatus;
    return result.contains(ConnectivityResult.wifi);
  }

  /// Texto descriptivo del estado para la UI
  Future<String> get statusLabel async {
    final result = await currentStatus;
    if (result.contains(ConnectivityResult.wifi))    return 'WiFi';
    if (result.contains(ConnectivityResult.mobile))  return 'Datos móviles';
    if (result.contains(ConnectivityResult.ethernet)) return 'Ethernet';
    return 'Sin conexión';
  }

  /// Ícono Material según estado
  Future<IconData> get statusIcon async {
    final result = await currentStatus;
    if (result.contains(ConnectivityResult.wifi))   return Icons.wifi;
    if (result.contains(ConnectivityResult.mobile)) return Icons.signal_cellular_alt;
    if (result.contains(ConnectivityResult.ethernet)) return Icons.lan;
    return Icons.wifi_off;
  }

  /// Color del ícono según estado
  Future<Color> get statusColor async {
    final connected = await isConnected;
    return connected ? const Color(0xFF2D5A27) : const Color(0xFFB53030);
  }
}

// ─────────────────────────────────────────────
// ConnectivityBanner
// Widget que se añade sobre cualquier Scaffold
// para mostrar un aviso cuando se pierde la red.
// Uso:
//   ConnectivityBanner(child: tuWidget)
// ─────────────────────────────────────────────

class ConnectivityBanner extends StatefulWidget {
  final Widget child;

  const ConnectivityBanner({super.key, required this.child});

  @override
  State<ConnectivityBanner> createState() => _ConnectivityBannerState();
}

class _ConnectivityBannerState extends State<ConnectivityBanner> {
  bool _sinConexion = false;
  late StreamSubscription<List<ConnectivityResult>> _sub;

  @override
  void initState() {
    super.initState();
    _checkInitial();
    _sub = ConnectivityService.instance.onConnectivityChanged.listen((result) {
      final desconectado = result.every((r) => r == ConnectivityResult.none);
      if (mounted) setState(() => _sinConexion = desconectado);
    });
  }

  Future<void> _checkInitial() async {
    final connected = await ConnectivityService.instance.isConnected;
    if (mounted) setState(() => _sinConexion = !connected);
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Banner de sin conexión
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: _sinConexion ? 36 : 0,
          color: const Color(0xFFB53030),
          child: _sinConexion
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi_off, color: Colors.white, size: 15),
                    SizedBox(width: 8),
                    Text(
                      'Sin conexión — modo sin datos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
        Expanded(child: widget.child),
      ],
    );
  }
}

// ─────────────────────────────────────────────
// ConnectivityIndicator
// Chip pequeño que muestra el estado de red.
// Ideal para la AppBar del Dashboard.
// Uso:
//   actions: [const ConnectivityIndicator()]
// ─────────────────────────────────────────────

class ConnectivityIndicator extends StatefulWidget {
  const ConnectivityIndicator({super.key});

  @override
  State<ConnectivityIndicator> createState() => _ConnectivityIndicatorState();
}

class _ConnectivityIndicatorState extends State<ConnectivityIndicator> {
  String _label    = '…';
  IconData _icon   = Icons.wifi;
  Color _color     = Colors.white54;
  late StreamSubscription<List<ConnectivityResult>> _sub;

  @override
  void initState() {
    super.initState();
    _refresh();
    _sub = ConnectivityService.instance.onConnectivityChanged
        .listen((_) => _refresh());
  }

  Future<void> _refresh() async {
    final svc   = ConnectivityService.instance;
    final label = await svc.statusLabel;
    final icon  = await svc.statusIcon;
    final color = await svc.statusColor;
    if (mounted) {
      setState(() {
        _label = label;
        _icon  = icon;
        _color = color == const Color(0xFF2D5A27) ? Colors.white : Colors.red.shade200;
      });
    }
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_icon, color: _color, size: 15),
            const SizedBox(width: 4),
            Text(_label,
                style: TextStyle(
                    color: _color,
                    fontSize: 11,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      );
}
