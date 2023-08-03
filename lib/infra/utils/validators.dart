import 'package:form_builder_validators/form_builder_validators.dart';

class FormValidators{

  static final emailValidator = FormBuilderValidators.email();
  static final passwordValidator = FormBuilderValidators.minLength(8);
  static final isRequired = FormBuilderValidators.required();


  Iterable<Match> passwordConfirmation(String password, String repeatedPass) {
    return repeatedPass.allMatches(password);
  }
}