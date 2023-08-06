import 'package:bank_project/presentation/modules/components/bottom_navigation.dart';
import 'package:bank_project/presentation/modules/components/user_interface.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserInterfaceContainer(),

          ],
        ),
      ),
      bottomNavigationBar: BankBottomNavigator(),
    );
  }
}
