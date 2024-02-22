import 'package:flutter/material.dart';
import 'package:personal_website/utils/constants.dart';
import 'package:personal_website/widgets/containers/container_1.dart';
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
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [NavBar(), Container1()],
          ),
        ),
      )),
    );
  }
}
