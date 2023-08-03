import 'package:bank_project/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DefaultTextButton extends StatelessWidget {
  final String route;
  final String title;

  const DefaultTextButton({
    super.key,
    this.route = '',
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Modular.to.popAndPushNamed(route);
        Fluttertoast.showToast(
            msg: 'done',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      },
      style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.white)),
      child: Text(
        title,
        style: Fonts.coloredTextButtonFont,
      ),
    );
  }
}
