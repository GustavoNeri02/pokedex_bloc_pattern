import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_decoration_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/components/custom_appbar.dart';

Widget pokeballs(int index, BuildContext context) {
  switch (index) {
    case 0:
      //pokeball
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            border: Border.all(),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.black, Colors.white],
              stops: [0.45, 0.5, 0.55],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
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
    case 1:
      //greatball
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            border: Border.all(),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.black, Colors.white],
              stops: [0.45, 0.5, 0.55],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Center(
          child: GestureDetector(
            onTap: () {
              AppModule.to.bloc<AppDecorationBloc>().changePokebol();
            },
            child: Stack(
              children: [
                Positioned(
                  bottom: customAppBar(context).preferredSize.height/1.7,
                  left: 80,
                  child: Transform.rotate(
                    angle: -pi/6,
                    child: Container(
                      height: customAppBar(context).preferredSize.height,
                      width: customAppBar(context).preferredSize.height/2.5,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: customAppBar(context).preferredSize.height/1.6,
                  right: 80,
                  child: Transform.rotate(
                    angle: pi/6,
                    child: Container(
                      height: customAppBar(context).preferredSize.height,
                      width: customAppBar(context).preferredSize.height/2.5,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                ),
                Center(
                  heightFactor: 2.5,
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
              ],
            ),
          ),
        ),
      );
    case 2:
      //ultraball
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            border: Border.all(),
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black, Colors.white],
              stops: [0.45, 0.5, 0.55],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Center(
          child: GestureDetector(
            onTap: () {
              AppModule.to.bloc<AppDecorationBloc>().changePokebol();
            },
            child: Stack(
              children: [
                Positioned(
                  left: 80,
                  child: Container(
                    height: customAppBar(context).preferredSize.height/3,
                    width: 40,decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )
                  ),
                  ),
                ),
                Positioned(
                  right: 80,
                  child: Container(
                    height: customAppBar(context).preferredSize.height/3,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                    ),
                  ),
                ),
                Center(
                  heightFactor: 2.5,
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
              ],
            ),
          ),
        ),
      );
    default:
      return Container();
  }
}
