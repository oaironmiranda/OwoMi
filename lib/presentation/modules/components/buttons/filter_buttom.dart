import 'package:flutter/material.dart';

class FilterButtom extends StatefulWidget {
  const FilterButtom({super.key});

  @override
  State<FilterButtom> createState() => _FilterButtomState();
}

class _FilterButtomState extends State<FilterButtom> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined),);
  }
}
