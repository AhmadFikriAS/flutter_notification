import 'package:flutter/material.dart';
import 'package:flutter_fcm/pages/home_page.dart';
import 'package:flutter_fcm/pages/notification_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/home': (_) => HomePage(),
    '/notification': (_) => const NotificationPage(),
  };

  static String initial = '/home';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
