import 'package:mybs_core_module/mybs_core_module.dart';
import 'package:flutter/material.dart';
import 'package:mybs/app_module_entry.dart';
import 'package:mybs/injections.dart';
import 'package:mybs/src/utils/constants/strings.dart';

class MYBSApp extends StatelessWidget {
  const MYBSApp(this._appModuleEntry, {Key? key}) : super(key: key);
  final AppModuleEntry _appModuleEntry;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Strings.appName,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: child!,
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
      ),
      initialBinding: InitialInjections(),
      getPages: _appModuleEntry.getPages,
      initialRoute: _appModuleEntry.initialRouteName,
    );
  }
}
