import 'package:flutter_assigment07/screens/dashboard_screen.dart';
import 'package:flutter_assigment07/screens/welcome_screen.dart';

class AppRouter {
  static const String dashboard = 'dashboard';
  static const String welcome = 'welcome';

  static get routes => {
        welcome: (context) => const WelcomeScreen(),
        dashboard: (context) => const DashboardScreen(),
      };
}
