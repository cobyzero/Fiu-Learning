import 'package:flutter/material.dart';
import 'package:fuilearning/Core/Router/router.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          title: 'Material App',
          routerConfig: goRouter,
          theme: ThemeData(fontFamily: "Cabin"),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}