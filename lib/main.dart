import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'ui/login_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const Login(),
    );
  }
}
