import 'package:flutter/material.dart';
import 'package:slide/auth/login.dart';
import 'package:slide/betslip.dart';
import 'package:slide/casino.dart';
import 'package:slide/home_page.dart';
import 'package:slide/selections.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List screens = [HomePage(), Betslip(), Casino(), Login()];

  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: (value) {
            selected = value;
            setState(() {});
          },
          currentIndex: selected,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer), label: "Sports"),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on), label: "My Bets"),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: "Casino"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Login")
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Selections()));
        },
        elevation: 2,
        child: Icon(Icons.back_hand),
      ),
      body: screens[selected],
    );
  }
}
