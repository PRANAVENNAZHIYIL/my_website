import 'package:flutter/material.dart';
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
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.draw_rounded),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              navButton('text'),
              navButton('text'),
              navButton('text'),
              navButton('text'),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('button'),
            ),
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
      child: Text(text,
          style: const TextStyle(color: Colors.black, fontSize: 18)));
}// Container