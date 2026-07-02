# 🪨 Petroglifos Maule

Aplicación móvil desarrollada en **Flutter** para la gestión y consulta de información sobre petroglifos y sitios arqueológicos. El sistema permite registrar, administrar y visualizar fichas técnicas de petroglifos, facilitando el trabajo de investigadores y la difusión del patrimonio arqueológico.

---

## 📱 Características principales

### Portal Público
- Consulta del catálogo de petroglifos.
- Búsqueda por código o descripción.
- Filtros por tipo de motivo.
- Visualización del detalle de cada petroglifo.
- Acceso a información multimedia asociada.

### Portal de Administración
- Gestión de sitios arqueológicos.
- Registro y edición de fichas técnicas de petroglifos.
- Administración de investigadores y usuarios.
- Registro de visitas.
- Persistencia de información mediante base de datos SQLite.

---

## 🛠️ Tecnologías utilizadas

- Flutter
- Dart
- SQLite
- GoRouter
- Material Design 3

---

## 📂 Estructura del proyecto

```text
lib/
├── models/          # Modelos de datos
├── screens/         # Pantallas públicas y administrativas
├── services/        # Base de datos y lógica de acceso
├── widgets/         # Componentes reutilizables
├── routes/          # Navegación de la aplicación
└── main.dart        # Punto de entrada
