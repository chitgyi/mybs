import 'dart:developer';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationService {
  static final PushNotificationService _instance =
      PushNotificationService._internal();
  factory PushNotificationService() => _instance;
  late final FlutterLocalNotificationsPlugin soundChannelPlugin;
  late final FlutterLocalNotificationsPlugin noSoundChannelPlugin;
  PushNotificationService._internal() {
    _start();
  }

  void _start() async {
    soundChannelPlugin = FlutterLocalNotificationsPlugin();
    noSoundChannelPlugin = FlutterLocalNotificationsPlugin();
    const soundChannel = AndroidNotificationChannel(
      'fcm_default_channel',
      'High Importance Notifications',
      importance: Importance.max,
    );

    const noSoundChannel = AndroidNotificationChannel(
      'fcm_default_channel_no_sound',
      'High Importance Notifications',
      importance: Importance.max,
    );

    await soundChannelPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(soundChannel);
    await noSoundChannelPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(noSoundChannel);

    log("PushNotificationService initialized");
  }

  void show({bool hasSound = false}) {
    log(hasSound
        ? "Showing sound notification"
        : "Showing no sound notification");
    if (hasSound) {
      soundChannelPlugin.show(
        1,
        "Noti with sound",
        "Body",
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'fcm_default_channel',
            'High Importance Notifications',
            icon: "ic_launcher",
          ),
        ),
      );
    } else {
      noSoundChannelPlugin.show(
        1,
        "Noti without sound",
        "Body",
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'fcm_default_channel_no_sound',
            'High Importance Notifications',
            icon: "ic_launcher",
          ),
        ),
      );
    }
  }
}
