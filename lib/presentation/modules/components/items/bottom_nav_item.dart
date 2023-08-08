import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatefulWidget {
  final String icon;
  const BottomNavItem({super.key, required this.icon});

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20,
      height: 20,
      child: SvgPicture.asset(
        widget.icon,
        colorFilter: const ColorFilter.mode(
          Color(0xFFBD00FF),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
