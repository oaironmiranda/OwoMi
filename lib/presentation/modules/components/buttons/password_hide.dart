import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordHide extends StatefulWidget {
  final bool isObscure;
  const PasswordHide(this.isObscure, {super.key});

  @override
  State<PasswordHide> createState() => _PasswordHideState();
}

class _PasswordHideState extends State<PasswordHide> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: IconButton(
        onPressed: () {
          setState(() {
            !widget.isObscure;
          });
        },
        icon: widget.isObscure ? SvgPicture.asset('assets/eye_on.svg' ) : SvgPicture.asset('assets/eye_off.svg' ),
      ),
    );
  }
}
