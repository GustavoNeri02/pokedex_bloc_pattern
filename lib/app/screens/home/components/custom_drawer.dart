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
                      icon: Icon(Icons.invert_colors)),
                ),
              )
            ],
          ),
          ListTile(title: Text("Item 1")),
          ListTile(title: Text("Item 2")),
          ListTile(title: Text("Item 3")),
          ListTile(title: Text("Item 4")),
          ListTile(title: Text("Item 5")),
        ],
      ),
    );
  }
}
