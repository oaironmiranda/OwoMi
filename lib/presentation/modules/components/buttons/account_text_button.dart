import 'package:bank_project/presentation/modules/components/buttons/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../infra/infra.dart';

class AccountTextButton extends StatefulWidget {
  final String isUserText;
  final String buttonText;
  final String route;

  const AccountTextButton({
    super.key,
    required this.isUserText,
    required this.buttonText,
    required this.route,
  });

  @override
  State<AccountTextButton> createState() => _AccountTextButtonState();
}

class _AccountTextButtonState extends State<AccountTextButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(widget.isUserText, style: Fonts.textButtonFont),
          ),
          DefaultTextButton(
            route: widget.route,
            title: widget.buttonText,
          ),
        ],
      ),
    );
  }
}
