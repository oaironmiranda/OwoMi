import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum Type {
  income,
  expense,
}


class FormatFunctions{

  static AppBar customAppBar = AppBar(
    backgroundColor: Colors.transparent,
    iconTheme:const IconThemeData(color: Colors.black) ,
  );

  static String getCurrency() {
    var formattedMoney =
    NumberFormat.simpleCurrency(locale: Platform.localeName);
    return formattedMoney.currencySymbol;
  }


}