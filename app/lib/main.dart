import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mybs_home_module/mybs_home_module.dart';
import 'package:mybs/app_module_entry.dart';
import 'package:mybs/firebase_options.dart';
import 'package:mybs/mybs_app.dart';
import 'package:mybs/src/services/fcm_service.dart';
import 'package:mybs/src/services/noti_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  PushNotificationService();
  FCMService().start();

  final appModuleEntry = AppModuleEntry();
  appModuleEntry.addModule(HomeModule());
  runApp(MYBSApp(appModuleEntry));
}
