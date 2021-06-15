import 'package:bloc_pattern/app/screens/home/home_page.dart';
import 'package:bloc_pattern/app/shared/theme/dark_theme.dart';
import 'package:bloc_pattern/app/shared/theme/light_theme.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: isDark? darkTheme: lightTheme,
      home: HomePage(),
    );
  }
}
