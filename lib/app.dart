import 'package:flutter/material.dart';
import 'package:flutter_fcm/routes.dart';
import 'package:flutter_fcm/services/firebase_messaging_service.dart';
import 'package:flutter_fcm/services/notification_service.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    initilizeFirebaseMessaging();
    checkNotifications();
  }

  initilizeFirebaseMessaging() async {
    await Provider.of<FirebaseMessagingService>(context, listen: false)
        .initilize();
  }

  checkNotifications() async {
    await Provider.of<NotificationService>(context, listen: false)
        .checkNotification();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Push Notification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.list,
      initialRoute: Routes.initial,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
