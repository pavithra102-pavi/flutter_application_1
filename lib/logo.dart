import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AndroidCompact1(),
    );
  }
}

/// ================= SPLASH SCREEN =================
class AndroidCompact1 extends StatefulWidget {
  const AndroidCompact1({super.key});

  @override
  State<AndroidCompact1> createState() => _AndroidCompact1State();
}

class _AndroidCompact1State extends State<AndroidCompact1> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AndroidCompact2(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/logo.jpg",
          width: 220,
          height: 220,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

/// ================= LOGIN PAGE =================
class AndroidCompact2 extends StatelessWidget {
  const AndroidCompact2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
