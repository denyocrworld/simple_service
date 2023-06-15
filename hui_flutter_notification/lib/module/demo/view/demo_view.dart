import 'package:flutter/material.dart';
import 'package:hui_flutter_notification/core.dart';

class DemoView extends StatefulWidget {
  const DemoView({Key? key}) : super(key: key);

  Widget build(context, DemoController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("DemoView"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => NotificationService.instance.showNotification(
          title: "Test Notifications",
          body: "Hello bro",
        ),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  State<DemoView> createState() => DemoController();
}
