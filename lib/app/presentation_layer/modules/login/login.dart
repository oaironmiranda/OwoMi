import 'package:bank_mockup/app/infra/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../components/buttons/buttons.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool submit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 100, 0, 25),
              child: Text(
                'Login',
                textAlign: TextAlign.center,
                style: NBFonts.h1,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: "E-mail",
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                    inputType: TextInputType.emailAddress,
                  ),
                  CustomTextField(
                      label: "Password",
                      isObscure: true,
                      validators: FormBuilderValidators.compose(
                          [FormBuilderValidators.required()])),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NBDefaultButton(
                          label: "Sign in",
                          onAction: () {},
                        ),
                        NBDefaultButton(
                          label: "Sign up",
                          onAction: () {},
                        ),
                      ],
                    ),
                  ),
                   const Center(
                      child: NBTextButton(
                    title: "Forget Password",
                    route: "home",
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
