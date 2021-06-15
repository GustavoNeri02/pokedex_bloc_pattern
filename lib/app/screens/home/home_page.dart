import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/app_module.dart';
import 'package:pokedex_bloc_pattern/app/shared/model/pokemon_model.dart';

import 'components/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Pokemon> listPokemons = [
      Pokemon(name: "Charizard"),
      Pokemon(name: "Pikachu"),
      Pokemon(name: "Pichu"),
      Pokemon(name: "Raichu"),
      Pokemon(name: "Bulbassaur"),
      Pokemon(name: "Charmander"),
      Pokemon(name: "Squirtle"),
      Pokemon(name: "Aron"),
      Pokemon(name: "Ponyta"),
      Pokemon(name: "Mew"),
      Pokemon(name: "Mewtwo"),
    ];

    listPokemons.sort((a, b) => a.name.compareTo(b.name));

    Widget _buildItem(Pokemon pokemon) {
      return ListTile(
        title: SelectableText(pokemon.name),
      );
    }

    Widget _buildList(List<Pokemon> list) {
      return ListView.separated(
        padding: EdgeInsets.all(20),
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(list[index]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemCount: list.length,
      );
    }

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
      body: _buildList(listPokemons),
    );
  }
}
