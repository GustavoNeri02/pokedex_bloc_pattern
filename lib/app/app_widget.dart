import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/app_module.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/home_page.dart';
import 'package:pokedex_bloc_pattern/app/shared/theme/dark_theme.dart';
import 'package:pokedex_bloc_pattern/app/shared/theme/light_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: AppModule.to.bloc<AppBloc>().theme,
      initialData: false,
      builder: (context, snapshot) {
        return MaterialApp(
          theme: snapshot.data! ? darkTheme : lightTheme,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: HomePage(),
        );
      },
    );
  }
}
