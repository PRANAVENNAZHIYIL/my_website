import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/widgets/nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Text(
                'PRANAV',
                style: TextStyle(color: Colors.purpleAccent),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
