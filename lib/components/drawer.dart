
import 'package:flutter/material.dart';
import 'package:food_delivery/components/drawerlist.dart';
import 'package:food_delivery/page/homepage.dart';

import '../page/Settings.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {

  void home() {
    Navigator.pop(context);
  }
  void setting() {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Setting()));
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Icon(Icons.fastfood,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //Home
          DrawerList(onTap: home, text: 'Home', icon: Icons.home),

          //setting
          DrawerList(onTap: setting, text: 'Setting', icon: Icons.settings),

          const Spacer(),
          // logout
          DrawerList(onTap: () {}, text: 'Logout', icon: Icons.logout_outlined),

          const SizedBox(height: 25,)
        ],
      ),
    );
  }
}
