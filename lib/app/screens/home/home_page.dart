import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokedex_bloc_pattern/app/screens/home/components/custom_appbar.dart';

import 'components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(),
      appBar: customAppBar(context),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString("assets/pokedex.json"),
        builder: (context, snapshot) {
          var data = json.decode(snapshot.data.toString());
          return GridView.builder(
            itemCount: snapshot.hasData ? data.length : 0,
            //data.length
            itemBuilder: (context, index) {
              return _buildItem(context, data, index);
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          );
        },
      ),
    );
  }
}

Widget _buildItem(BuildContext context, dynamic data, int index) {
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
    child: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data[index]["id"].toString(),
          ),
          Expanded(
            child: Image.asset(
              data[index]["id"].toString().length == 3
                  ? "assets/thumbnails/${data[index]["id"].toString()}.png"
                  : data[index]["id"].toString().length == 2
                      ? "assets/thumbnails/0${data[index]["id"].toString()}.png"
                      : "assets/thumbnails/00${data[index]["id"].toString()}.png",
            ),
          ),
          SelectableText(data[index]["name"]["english"].toString()),
        ],
      ),
    ),
  );
}
