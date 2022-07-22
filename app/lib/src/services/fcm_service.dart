// ignore_for_file: unused_element, avoid_print

import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> _onbackgroundMessageHandler(RemoteMessage message) async {
  print("Background => $message");
  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   sound: false,
  // );
  // PushNotificationService().show(
  //   hasSound: Random().nextBool(),
  // );
}

class FCMService {
  static final FCMService _instance = FCMService._internal();
  factory FCMService() => _instance;
  FCMService._internal();

  void start() async {
    // FirebaseMessaging.onBackgroundMessage(_onbackgroundMessageHandler);
    await FirebaseMessaging.instance.subscribeToTopic("testing");
    FirebaseMessaging.onMessage.listen((event) {
      print("Foregound => $event");
      // PushNotificationService().show(hasSound: Random().nextBool());
    });
  }
}
