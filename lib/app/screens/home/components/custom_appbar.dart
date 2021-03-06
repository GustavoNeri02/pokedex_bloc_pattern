import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/components/pokebolas.dart';

AppBar customAppBar(BuildContext context) {
  Key a = Key("value");
  return AppBar(
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(50),
      ),
    ),
    flexibleSpace: StreamBuilder<int>(
        key: a,
        initialData: AppModule.to.bloc<AppDecorationBloc>().indexPokebola,
        stream: AppModule.to.bloc<AppDecorationBloc>().index,
        builder: (context, snapshot) {
          return pokeballs(snapshot.data!, context);
        }),
  );
}
