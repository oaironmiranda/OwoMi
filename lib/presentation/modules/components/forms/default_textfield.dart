import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DefaultTextField extends StatefulWidget {
  final String label;
  final TextInputType type;
  final String icon;
  final List<String? Function(String?)> validators;

  const DefaultTextField({
    super.key,
    required this.label,
    required this.type,
    required this.validators,
    required this.icon,
  });

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.maxFinite,
      child: FormBuilderTextField(
        textAlign: TextAlign.justify,
        textAlignVertical: TextAlignVertical.bottom,
        name: widget.label,
        keyboardType: widget.type,
        validator: FormBuilderValidators.compose(widget.validators),
        decoration: InputDecoration(
          prefixIcon: Container(
            alignment: Alignment.center,
            height: 20,
            width: 20,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                widget.icon,
                colorFilter: const ColorFilter.mode(
                  Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          hintText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(width: 0.50),
          ),
        ),
      ),
    );
  }
}
