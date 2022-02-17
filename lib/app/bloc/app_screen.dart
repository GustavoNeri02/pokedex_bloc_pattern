import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/screens/splash/splash_screen.dart';

class AppScreenBloc extends BlocBase {
  Widget initialScreen = SplashScreen();

  final StreamController<Widget> _screen$ = StreamController<Widget>();

  Stream<Widget> get screen => _screen$.stream;

  changeScreen(screen) {
    initialScreen = screen;
    _screen$.add(initialScreen);
  }

  @override
  void dispose() {
    _screen$.close();
    super.dispose();
  }
}
