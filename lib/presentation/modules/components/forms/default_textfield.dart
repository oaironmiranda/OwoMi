import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DefaultTextField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextInputType type;
  final String icon;
  final List<String? Function(String?)> validators;

  const DefaultTextField({
    super.key,
    required this.label,
    required this.type,
    required this.validators,
    required this.icon,
    this.isPassword = false,
  });

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 19),
      child: SizedBox(
        height: 40,
        width: 320,
        child: FormBuilderTextField(
          textAlign: TextAlign.justify,
          textAlignVertical: TextAlignVertical.bottom,
          name: widget.label,
          obscureText: isHidden,
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
            suffixIcon: widget.isPassword
                ? SizedBox(
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
                  )
                : Visibility(
                    visible: false,
                    child: SvgPicture.asset('/'),
                  ),
            hintText: widget.label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 0.50),
            ),
          ),
        ),
      ),
    );
  }
}
