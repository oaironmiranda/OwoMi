import 'package:flutter/cupertino.dart';

class DefaultColors {
  static const buttonColor = LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [
      Color(0xff7000ff),
      Color(0xffbd00ff),
    ],
  );
  static const dashboardColor = LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [
      Color(0xFF5257D0),
      Color(0xFFBD00FF),
    ],
  );

  static Color themeColor = const Color(0x7FBD00FF).withOpacity(50.0);
  static Color greenIncome = const Color(0xFF5AAA5A);
  static Color redExpenses = const Color(0xFFAA5A5A);
}
