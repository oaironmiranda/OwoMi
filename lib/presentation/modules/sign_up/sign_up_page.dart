import 'package:bank_project/infra/utils/validators.dart';
import 'package:bank_project/infra/infra.dart';
import 'package:bank_project/presentation/modules/components/forms/default_password_textfield.dart';
import '../../modules/components/components.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 250.0, left: 19, right: 19),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text('Register', style: Fonts.h1),
              ),
              Text('Create your account', style: Fonts.normalFont),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultTextField(
                  icon: 'assets/user_icon.svg',
                  label: 'Full Name',
                  type: TextInputType.emailAddress,
                  validators: [
                    FormValidators.isRequired,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultTextField(
                  icon: 'assets/email_icon.svg',
                  label: 'E-mail',
                  type: TextInputType.text,
                  validators: [
                    FormValidators.isRequired,
                    FormValidators.emailValidator,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultPasswordTextField(
                  icon: 'assets/lock_icon.svg',
                  label: 'Password',
                  type: TextInputType.text,
                  validators: [
                    FormValidators.isRequired,
                    FormValidators.emailValidator,
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: DefaultPasswordTextField(
                  icon: 'assets/lock_icon.svg',
                  label: 'Repeat Password',
                  type: TextInputType.text,
                  validators: [
                    FormValidators.isRequired,
                    FormValidators.emailValidator,
                  ],
                ),
              ),
              SizedBox(height: 25,),
              DefaultButton(onAction: () {}, label: 'Register'),
              const AccountTextButton(
                isUserText: 'Already have an account?',
                buttonText: 'Sign in',
                route: '/signin',
              )
            ],
          ),
        ),
      ),
    );
  }
}
