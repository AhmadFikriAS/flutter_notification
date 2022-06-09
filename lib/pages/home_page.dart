import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/notification_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  showNotification() {
    setState(() {
      value = !value;
      if (value) {
        Provider.of<NotificationService>(context, listen: false)
            .showLocalNotification(
          CustomNotification(
            id: 1,
            title: 'Hello World',
            body: 'Tap to access',
            payload: '/notification',
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 174, 221, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/topic.png'),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Card(
                  child: ListTile(
                    title: const Text('remind me later'),
                    trailing: value
                        ? Icon(Icons.check_box,
                            color: Colors.black.withOpacity(0.5))
                        : const Icon(
                            Icons.check_box_outline_blank,
                          ),
                    onTap: showNotification,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
