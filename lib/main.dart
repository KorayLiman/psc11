import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          bottomNavigationBar: ConvexAppBar.badge(
        {3: "99+"},
        badgeMargin: EdgeInsets.fromLTRB(25, 0, 0, 25),
        items: [
          TabItem(icon: Icons.home, title: 'Anasayfa'),
          TabItem(icon: Icons.map, title: 'Keşfet'),
          TabItem(icon: Icons.add, title: 'Randevu al'),
          TabItem(icon: Icons.message, title: 'Mesaj'),
          TabItem(icon: Icons.people, title: 'Profil'),
        ],
        initialActiveIndex: 2, //optional, default as 0
        onTap: (int i) => print('click index=$i'),
        style: TabStyle.react,
        //gradient: LinearGradient(colors: []),
      )),
    );
  }
}
