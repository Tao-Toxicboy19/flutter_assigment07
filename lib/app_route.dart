import 'package:flutter_assigment07/screens/welcome_screen.dart';

class AppRouter {
  static const String login = 'login';
  static const String welcome = 'welcome';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
      };
}
