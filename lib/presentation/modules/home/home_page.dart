import 'package:bank_project/presentation/modules/components/balance_component.dart';
import 'package:bank_project/presentation/modules/components/bottom_navigation.dart';
import 'package:bank_project/presentation/modules/components/buttons/filter_buttom.dart';
import 'package:bank_project/presentation/modules/components/list_view_component.dart';
import 'package:bank_project/presentation/modules/components/user_interface.dart';
import 'package:flutter/material.dart';

import '../../../infra/infra.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 244,
              width: double.infinity,
              child: Stack(
                children: [
                  UserInterfaceContainer(name: _name),
                  const Positioned(
                    left: 20,
                    bottom: 15,
                    right: 20,
                    child: UserBalanceBar(),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                //month carrousel
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transactions', style: Fonts.normalFontW400),
                      const FilterButtom(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 450,
                  width: double.maxFinite,
                  child: MainMenuListView(),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        width: double.infinity,
        child: const BankBottomNavigator(),
      ),
    );
  }
}
