import 'package:flutter/material.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_bloc.dart';
import 'package:pokedex_bloc_pattern/app/bloc/app_module.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      child: Image.asset("assets/avatar/avatar.png"),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  accountName: Text("Gustavo Neri"),
                  accountEmail: Text("gutneri@hotmail.com")),
              Positioned(
                right: 20,
                child: SafeArea(
                  child: IconButton(
                      onPressed: () {
                        AppModule.to.bloc<AppBloc>().changeTheme();
                      },
                      icon: !AppModule.to.bloc<AppBloc>().isDark
                          ?Icon(Icons.wb_incandescent_rounded,
                              color: Colors.yellow,
                      )
                          :Icon(Icons.wb_incandescent_outlined),
                  ),
                ),
              )
            ],
          ),
          ListTile(title: Text("Pokedex"), onTap: (){},),
          ListTile(title: Text("Meus Pokemons"), onTap: (){}),
          ListTile(title: Text("Tipos de Pokebolas"), onTap: (){}),
          ListTile(title: Text("Insígneas"), onTap: (){}),
          ListTile(title: Text("Meus times"), onTap: (){}),
        ],
      ),
    );
  }
}
