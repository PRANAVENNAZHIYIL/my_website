import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: ColoredBox(
        color: Colors.white,
        child: Center(
          child: Text(
            'PRANAV',
            style: TextStyle(color: Colors.purpleAccent),
          ),
        ),
      )),
    );
  }
}
