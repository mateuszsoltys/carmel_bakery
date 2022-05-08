import 'package:firebase_core/firebase_core.dart';
import 'app/theme/theme_global.dart';
import 'firebase_options.dart';
import 'package:carmel_bakery/features/auth/auth_gate_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carmel Bakery',
      theme: GlobalTheme(),
      home: AuthGate(),
    );
  }
}
