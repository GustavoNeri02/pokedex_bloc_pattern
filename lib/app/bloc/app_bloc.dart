import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';

class AppBloc extends BlocBase {
  bool isDark = false;

  final StreamController<bool> _theme$ = StreamController<bool>();

  Stream<bool> get theme => _theme$.stream;

  changeTheme() {
    isDark = !isDark;
    _theme$.add(isDark);
    if (isDark) {
      AppModule.to.bloc<AppDecorationBloc>().removePokeball();
    } else {
      AppModule.to.bloc<AppDecorationBloc>().changePokeball();
    }
  }

  @override
  dispose() {
    _theme$.close();
    super.dispose();
  }
}
