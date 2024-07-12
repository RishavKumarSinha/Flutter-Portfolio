import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/theme/theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightmode,
      darkTheme: darkmode,
    );
  }
}




