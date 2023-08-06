import 'package:bank_project/presentation/modules/components/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class BankBottomNavigator extends StatefulWidget {
  const BankBottomNavigator({super.key});

  @override
  State<BankBottomNavigator> createState() => _BankBottomNavigatorState();
}

class _BankBottomNavigatorState extends State<BankBottomNavigator> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: BottomNavItem(icon: 'assets/minus_icon.svg')),
        BottomNavigationBarItem(
          label: '',
          icon: BottomNavItem(icon: 'assets/home_icon.svg'),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: BottomNavItem(icon: 'assets/plus_icon.svg'),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
