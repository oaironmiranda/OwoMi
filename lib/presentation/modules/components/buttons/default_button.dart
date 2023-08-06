import 'package:bank_project/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatefulWidget {
  const DefaultButton(
      {super.key, required this.onAction, required this.label});

  final String label;
  final void Function()?  onAction;

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: DefaultColors.buttonColor,
      ),
      width: 320,
      height: 40,
      child: ElevatedButton(
        onPressed: widget.onAction,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
        child: Text(
          widget.label,
          style: Fonts.buttonDefaultFont,
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
