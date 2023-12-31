import 'package:bank_project/infra/utils/validators.dart';
import 'package:bank_project/infra/infra.dart';
import 'package:bank_project/presentation/modules/components/buttons/account_text_button.dart';
import 'package:bank_project/presentation/modules/components/buttons/buttons.dart';
import 'package:bank_project/presentation/modules/components/buttons/text_button.dart';
import 'package:bank_project/presentation/modules/components/forms/default_textfield.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 250.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text('Welcome back', style: Fonts.h1),
              ),
              Text('Login to you account', style: Fonts.normalFont),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultTextField(
                  icon: 'assets/email_icon.svg',
                  label: 'Email',
                  type: TextInputType.emailAddress,
                  validators: [
                    FormValidators.isRequired,
                    FormValidators.emailValidator,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultTextField(
                  isPassword: true,
                  icon: 'assets/lock_icon.svg',
                  label: 'Password',
                  type: TextInputType.text,
                  validators: [
                    FormValidators.isRequired,
                    FormValidators.emailValidator,
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DefaultTextButton(
                    route: '/',
                    title: 'forgot password?',
                  ),
                  SizedBox(width: 38),
                ],
              ),
              DefaultButton(onAction: () {}, label: 'Sign in'),
              const AccountTextButton(
                isUserText: 'Don’t have an account?',
                buttonText: 'Sign up',
                route: '/',
              )
            ],
          ),
        ),
      ),
    );
  }
}
