import 'package:bank_project/data/models/money.dart';
import 'package:bank_project/presentation/modules/components/components.dart';
import 'package:flutter/material.dart';
import '../../../../infra/infra.dart';

class MainMenuListView extends StatefulWidget {
  // final int index;
  // final UserFinanceData userData;


  const MainMenuListView({
    super.key,
    // required this.userData,
    // required this.index,
  });

  @override
  State<MainMenuListView> createState() => _MainMenuListViewState();
}

class _MainMenuListViewState extends State<MainMenuListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.only( left: 18.0, bottom: 15),
            child: TransactionsItem(financeData: data[index] ),
          );
        },
      ),
    );
  }

  List<UserFinanceData> data = [
    UserFinanceData('Sales', Type.income.toString(), 100.00, ''),
    UserFinanceData('Sales', 'income', 120.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
    UserFinanceData('Sales', 'income', 100.00, ''),
  ];
}
