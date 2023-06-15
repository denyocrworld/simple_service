import 'package:hui_flutter_notification/module/demo/view/demo_view.dart';
import 'package:hui_flutter_notification/state_util.dart';
import 'package:flutter/material.dart';
import 'package:hui_flutter_notification/service/notification_service/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.instance.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoView(),
    );
  }
}
