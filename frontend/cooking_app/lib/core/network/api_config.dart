// Adresse des Backends, wird beim Bauen gesetzt:
//   flutter build apk --dart-define=API_BASE_URL=http://<server-ip>:3000
// Ohne Angabe wird der PC hinter dem Android-Emulator (10.0.2.2) benutzt.
const String apiBaseUrl = String.fromEnvironment(
  'API_BASE_URL',
  defaultValue: 'http://10.0.2.2:3000',
);
