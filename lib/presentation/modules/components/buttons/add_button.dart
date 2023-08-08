import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAddButton extends StatefulWidget {
  const CustomAddButton({super.key});

  @override
  State<CustomAddButton> createState() => _CustomAddButtonState();
}

class _CustomAddButtonState extends State<CustomAddButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //call add value interface
      },
      icon: SvgPicture.asset('assets/add_buttom.svg'),
    );
  }
}
