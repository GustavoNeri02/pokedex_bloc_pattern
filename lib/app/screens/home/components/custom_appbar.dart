import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/components/pokebolas.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
        ),
    ),
    flexibleSpace: StreamBuilder<int>(
        initialData: 0,
        stream: AppModule.to.bloc<AppDecorationBloc>().index,
        builder: (context, snapshot) {
          return pokeballs(snapshot.data!);
        }),
  );
}
