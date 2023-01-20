import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:login_ui/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _changeColor() async {
    final color = Colors.grey[200];
    await FlutterStatusbarcolor.setStatusBarColor(color!);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
    await FlutterStatusbarcolor.setNavigationBarColor(color);
    FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _changeColor();

    return MaterialApp(
      title: 'Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}
