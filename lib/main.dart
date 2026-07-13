import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'auth/auth_provider.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash_screen.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const PriceRadarApp());

}

class PriceRadarApp extends StatelessWidget {
  const PriceRadarApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (_) => AuthProvider(),

      child: MaterialApp(

        debugShowCheckedModeBanner: false,

        title: "Price Radar",

        theme: AppTheme.lightTheme,

        home: const SplashScreen(),

      ),

    );

  }
}