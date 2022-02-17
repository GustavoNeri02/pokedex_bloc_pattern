import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/app_widget.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_screen.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
        Bloc((i) => AppDecorationBloc()),
        Bloc((i) => AppScreenBloc())
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
