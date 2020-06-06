import 'package:flutter/cupertino.dart';
import 'package:fstore/pages/home/homePage.dart';

class Routes {
  /// Defining the routes
  static String initial = home;
  static String home = '/';

  /// Setting the routes screens
  static Map<String, Widget Function(BuildContext)> routes() => {
        home: (ctx) => HomePage(),
      };
}
