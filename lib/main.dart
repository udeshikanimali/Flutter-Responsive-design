import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:test_app/screens/mobile_screen_layout.dart';
import 'package:test_app/screens/responsive.dart';
import 'package:test_app/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
  // runApp(
  //   DevicePreview(
  //     builder: (context) => MyApp(), // Wrap your app
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Design',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white
      ),
      //locale: DevicePreview.locale(context),
      //builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      
      home: const ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout: WebScreenLayout()),
    );
  }
}


