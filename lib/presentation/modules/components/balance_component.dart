import 'package:bank_project/infra/infra.dart';
import 'package:bank_project/presentation/modules/components/buttons/add_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserBalanceBar extends StatefulWidget {
  const UserBalanceBar({super.key});

  @override
  State<UserBalanceBar> createState() => _UserBalanceBarState();
}

class _UserBalanceBarState extends State<UserBalanceBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 80,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0, bottom: 19, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text('Your balance', style: Fonts.normalFont,),
                ),
                Text('${FormatFunctions.getCurrency()} 100.00', style: Fonts.h2),
              ],
            ),
          ),
          const CustomAddButton(),
        ],
      ),
    );
  }
}
