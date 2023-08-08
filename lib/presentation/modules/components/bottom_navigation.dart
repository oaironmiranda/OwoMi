import 'package:bank_project/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class BankBottomNavigator extends StatefulWidget {
  const BankBottomNavigator({super.key});

  @override
  State<BankBottomNavigator> createState() => _BankBottomNavigatorState();
}

class _BankBottomNavigatorState extends State<BankBottomNavigator> {
  int visit = 0;
  @override
  Widget build(BuildContext context) {
    return GNav(
      padding: const EdgeInsets.all(16),
      tabs: items,
      iconSize: 20,
      gap: 8,
      mainAxisAlignment: MainAxisAlignment.center,
      backgroundColor: Colors.white,
      color: const Color(0x7FBD00FF),
      activeColor: const Color(0x7FBD00FF),
      tabBackgroundColor: const Color(0x26BD00FF),
    );
  }

  List<GButton> items = const [
    GButton(icon: Icons.remove_circle_outline, text: 'home'),
    GButton(icon: Icons.home, text: 'home'),
    GButton(icon: Icons.add_circle_outline, text: 'Incomes'),
  ];
}
