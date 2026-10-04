import 'package:flutter/material.dart';

import 'app/matrix_app.dart';
import 'core/services/app_services.dart';
import 'features/dashboard/hud_overlay.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await appPreferences.initialize();
  runApp(const MatrixApp());
}

@pragma('vm:entry-point')
void overlayMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HudOverlay()),
  );
}
