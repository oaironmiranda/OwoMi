import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../infra/infra.dart';

class NBTextButton extends StatelessWidget {
  final String route;
  final String title;

  const NBTextButton({
    super.key,
    required this.route,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Modular.to.popAndPushNamed(route);
      },
      style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.white)),
      child: Text(
        title,
        style: NBFonts.normalFont,
      ),
    );
  }
}
