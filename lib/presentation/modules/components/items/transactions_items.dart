import 'dart:io';

import 'package:bank_project/data/models/money.dart';
import 'package:flutter/material.dart';

import '../../../../infra/infra.dart';

class TransactionsItem extends StatelessWidget {
  final UserFinanceData financeData;

  const TransactionsItem({
    super.key,
    required this.financeData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: typeOfValue(financeData.type)
                    ? DefaultColors.greenIncome
                    : DefaultColors.redExpenses,
                blurRadius: 4,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: typeOfValue(financeData.type)
              ? Icon(
                  Icons.arrow_downward_outlined,
                  color: DefaultColors.greenIncome,
                )
              : Icon(
                  Icons.arrow_upward_outlined,
                  color: DefaultColors.redExpenses,
                ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 174.0, left: 15.0),
          child: Text(
            financeData.name,
            style: typeOfValue(financeData.type)
                ? Fonts.incomeItemFont
                : Fonts.expensesItemFont,
          ),
        ),
        Text(
          fullValue(),
          style: typeOfValue(financeData.type)
              ? Fonts.incomeItemFont
              : Fonts.expensesItemFont,
        ),
      ],
    );
  }

  String fullValue(){
    return '${isIncome(financeData.type)} ${FormatFunctions.getCurrency()}${financeData.valueOfItem}';
  }

  String isIncome(String typeOfValue) {
    if (typeOfValue == Type.income.toString()) {
      return '+';
    } else {
      return '-';
    }
  }

  bool typeOfValue(String valueOfTransaction) {
    return valueOfTransaction == Type.income.toString() ? true : false;
  }
}
