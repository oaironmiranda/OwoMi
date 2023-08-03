import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  final bool confirmPassword;

  const TextFieldForm({
    super.key,
    this.confirmPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
          child: Text(
            confirmPassword ? "Repeat Password" : "Password",
            style: Utils().textConfigStyle,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6.95, 11, 18.05),
              child: FormBuilderTextField(
                name: label,
                obscureText: isObscure,
                keyboardType: inputType,
                decoration: Utils().inputDecoration,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: validators,
                inputFormatters: [
                  isCpf ? Utils().cpfMaskFormat : MaskTextInputFormatter(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
