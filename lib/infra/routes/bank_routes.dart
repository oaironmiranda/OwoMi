import 'package:bank_project/presentation/modules/home/home_page.dart';
import 'package:bank_project/presentation/modules/sign_in/sign_in_page.dart';
import 'package:bank_project/presentation/modules/sign_up/sign_up_page.dart';
import 'package:bank_project/presentation/modules/splash_page.dart';

class BankRoutes{

  static final routes = {
  '/home': (_) => const HomePage(),
  '/signin': (_) => const SigninPage(),
  '/signup': (_) => const SignupPage(),
  '/splash' : (_) => const SplashPage(),
  '/config': (_) => const SplashPage(),
  '/add': (_) => const SplashPage(),
  };

}