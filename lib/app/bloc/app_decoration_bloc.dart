import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';

class AppDecorationBloc extends BlocBase {
  int indexPokebola = 0;

  final StreamController<int> _index$ = StreamController<int>();

  Stream<int> get index => _index$.stream;

  changePokebol() {
    if (indexPokebola == 2) {
      indexPokebola = 0;
    } else {
      indexPokebola++;
    }
    _index$.add(indexPokebola);
  }

  @override
  void dispose() {
    _index$.close();
    super.dispose();
  }
}
