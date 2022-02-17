import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/components/custom_appbar.dart';

Widget buttonPokeball() {
  return GestureDetector(
    onTap: () {
      AppModule.to.bloc<AppDecorationBloc>().changePokeball();
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
  );
}

Widget pokeballs(int index, BuildContext context) {
  switch (index) {
    case 0:
      //pokeball
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          stops: [0.5, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                    flex: 73,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(1000))
                      ),
                    )),
                Flexible(
                    flex: 7,
                    child: Container(
                      color: Colors.black,
                    )),
                Flexible(
                    flex: 27,
                    child: Container(
                      color: Colors.transparent,
                    )),
              ],
            ),
            Positioned(bottom: 0, child: buttonPokeball())
          ],
        ),
      );
    case 1:
      //greatball
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          stops: [0.5, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                    flex: 73,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(1000))
                        )
                    )),
                Flexible(
                    flex: 7,
                    child: Container(
                      color: Colors.black,
                    )),
                Flexible(
                    flex: 27,
                    child: Container(
                      color: Colors.transparent,
                    )),
              ],
            ),
            Positioned(bottom: 0, child: buttonPokeball()),
            Positioned(
              bottom: customAppBar(context).preferredSize.height / 2,
              left: 80,
              child: Transform.rotate(
                angle: -pi / 6,
                child: Container(
                  height: customAppBar(context).preferredSize.height,
                  width: customAppBar(context).preferredSize.height / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                ),
              ),
            ),
            Positioned(
              bottom: customAppBar(context).preferredSize.height / 2,
              right: 80,
              child: Transform.rotate(
                angle: pi / 6,
                child: Container(
                  height: customAppBar(context).preferredSize.height,
                  width: customAppBar(context).preferredSize.height / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    case 2:
      //ultraball
      return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          stops: [0.5, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Center(
            child: Stack(
          alignment: Alignment.center,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                    flex: 73,
                    child: Container(
                      color: Colors.black,
                    )),
                Flexible(
                    flex: 7,
                    child: Container(
                      color: Colors.black,
                    )),
                Flexible(
                    flex: 27,
                    child: Container(
                      color: Colors.transparent,
                    )),
              ],
            ),
            Positioned(bottom: 0, child: buttonPokeball()),
            Positioned(
              top: 0,
              left: 80,
              child: Container(
                height: customAppBar(context).preferredSize.height / 2.5,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
              ),
            ),
            Positioned(
              top: 0,
              right: 80,
              child: Container(
                height: customAppBar(context).preferredSize.height / 2.5,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
              ),
            ),
          ],
        )),
      );
    default:
      return Container();
  }
}
