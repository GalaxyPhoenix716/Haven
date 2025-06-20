import 'package:flutter/material.dart';
import 'package:haven/utils/themes/device_themes/theme.dart';
import 'package:haven/views/home/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haven',
      themeMode: ThemeMode.system,
      theme: HavenAppTheme.lightTheme,
      darkTheme: HavenAppTheme.darkTheme,
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
