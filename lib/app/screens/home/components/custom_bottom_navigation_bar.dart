import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppModule.to.bloc<AppBloc>().isDark? 0 : 41,
      color: Colors.black,
      child: Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
            flex: 7,
            child: Container(
              color: Colors.black,
            ),
          ),
          Flexible(
            flex: 93,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(1000))
                )
            ),
          ),
        ],
      ),
    );
  }
}
