import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DefaultPasswordTextField extends StatefulWidget {
  final String label;
  final TextInputType type;
  final String icon;
  final List<String? Function(String?)> validators;

  const DefaultPasswordTextField({
    super.key,
    required this.label,
    required this.type,
    required this.validators,
    required this.icon,
  });

  @override
  State<DefaultPasswordTextField> createState() => _DefaultPasswordTextFieldState();
}

class _DefaultPasswordTextFieldState extends State<DefaultPasswordTextField> {
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
        obscureText: isHidden,
        obscuringCharacter: '*',
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
          suffixIcon: SizedBox(
            width: 20,
            height: 20,
            child: IconButton(
              onPressed: () {
                setState(() {
                  isHidden = !isHidden;
                });
              },
              icon: isHidden
                  ? SvgPicture.asset('assets/eye_on.svg')
                  : SvgPicture.asset('assets/eye_off.svg'),
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
