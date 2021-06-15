import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';

List<BoxDecoration> pokebolas = [
  BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      border: Border.all(),
      gradient: LinearGradient(
        colors: [Colors.red, Colors.black, Colors.white],
        stops: [0.45, 0.5, 0.55],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
  BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      border: Border.all(),
      gradient: LinearGradient(
        colors: [Colors.yellow, Colors.black, Colors.white],
        stops: [0.45, 0.5, 0.55],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
  BoxDecoration(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
      border: Border.all(),
      gradient: LinearGradient(
        colors: [Colors.blue, Colors.black, Colors.white],
        stops: [0.45, 0.5, 0.55],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
];

AppBar customAppBar(BuildContext context) {
  return AppBar(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
    flexibleSpace: StreamBuilder<int>(
        initialData: 0,
        stream: AppModule.to.bloc<AppDecorationBloc>().index,
        builder: (context, snapshot) {
          return Container(
            decoration: pokebolas[snapshot.data!],
            child: Center(
              child: GestureDetector(
                onTap: () {
                  AppModule.to.bloc<AppDecorationBloc>().changePokebol();
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 3),
                      color: Colors.white),
                  child: Center(
                    child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            border: Border.all(width: 1.5))),
                  ),
                ),
              ),
            ),
          );
        }),
  );
}
