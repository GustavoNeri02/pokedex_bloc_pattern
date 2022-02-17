import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_screen.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  Widget buttonPokeball() {
    return GestureDetector(
      onTap: () {
        AppModule.to.bloc<AppScreenBloc>().changeScreen(HomePage());
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 3),
            color: Colors.white),
        child: Center(
          child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  border: Border.all(width: 1.5))),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Flex(
                direction: Axis.vertical,
                children: [
                  Flexible(
                      flex: 50,
                      child: Flex(
                        direction: Axis.vertical,
                        children: [
                          Flexible(
                              flex: 73,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(1000)),
                                  color: Colors.red,
                                ),
                              )),
                        ],
                      )),
                  Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                      )),
                  Flexible(
                      flex: 50,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(1000))),
                      )),
                ],
              ),
              Positioned(child: buttonPokeball())
            ],
          ),
        ),
      ),
    );
  }
}
