import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: desktopeNavBar(),
      mobile: mobileNavBar(),
    );
  }
}

Widget Function(BuildContext)? mobileNavBar() {
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

Widget Function(BuildContext)? desktopeNavBar() {
  return (BuildContext context) {
    return SizedBox(
      width: double.infinity,

      //margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '//MINE',
            style: GoogleFonts.kanit(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navButton('Home'),
              navButton('work'),
              navButton('experience'),
              navButton('contact'),
            ],
          ),
        ],
      ),
    );
  };
}

// Widget Function(BuildContext) navButton(String text) {
//   return (BuildContext context) {
//     return TextButton(
//       onPressed: () {},
//       child: Text(
//         text,
//         style: const TextStyle(color: Colors.black, fontSize: 18),
//       ),
//     );
//   };
// }

Widget navButton(String text) {
  return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.kanit(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
          ),
        ),
      ));
}
