import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: desktopContainer1(),
      mobile: mobileContainer1(),
    );
  }
}

Widget Function(BuildContext)? mobileContainer1() {
  return (BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black54,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.draw_rounded)],
      ),
    );
  };
}

Widget Function(BuildContext)? desktopContainer1() {
  return (BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 800,
      child: Padding(
        padding: const EdgeInsets.only(left: 60.0, top: 160),
        child: Text(
          "The important \n Things for Developers \n is Their Portfolio",
          style: GoogleFonts.kanit(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 100,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  };
}
