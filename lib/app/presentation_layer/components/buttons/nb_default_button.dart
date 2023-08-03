import 'package:flutter/material.dart';
import '../../../infra/infra.dart';

class NBDefaultButton extends StatefulWidget {
  const NBDefaultButton(
      {super.key, required this.onAction, required this.label});

  final String label;
  final Function onAction;

  @override
  State<NBDefaultButton> createState() => _NBDefaultButtonState();
}

class _NBDefaultButtonState extends State<NBDefaultButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onAction;
      },
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(
                width: 2,
                strokeAlign: 1,
                style: BorderStyle.solid,
              )),
        ),
        backgroundColor: const MaterialStatePropertyAll(NBColors.goldenDefault),
      ),
      child: Text(
        widget.label,
        style: NBFonts.normalFont,
        softWrap: true,
        textAlign: TextAlign.center,
      ),
    );
  }
}
