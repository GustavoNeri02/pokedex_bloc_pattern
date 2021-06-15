import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokedex_bloc_pattern/app/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/app_module.dart';

import 'components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        flexibleSpace: Container(
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
        actions: [
          IconButton(
              onPressed: () {
                AppModule.to.bloc<AppBloc>().changeTheme();
              },
              icon: Icon(Icons.invert_colors))
        ],
      ),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString("assets/pokedex.json"),
        builder: (context, snapshot) {
          var data = json.decode(snapshot.data.toString());
          return GridView.builder(
            itemCount: data.length,
            //data.length
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        data[index]["id"].toString(),
                      ),
                      Image.asset(
                        data[index]["id"].toString().length == 3
                            ? "assets/thumbnails/${data[index]["id"].toString()}.png"
                            : data[index]["id"].toString().length == 2
                                ? "assets/thumbnails/0${data[index]["id"].toString()}.png"
                                : "assets/thumbnails/00${data[index]["id"].toString()}.png",
                      ),
                      SelectableText(data[index]["name"]["english"].toString()),
                    ],
                  ),
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQueryData().size.width > 500 ? 3 : 2),
          );
        },
      ),
    );
  }
}
