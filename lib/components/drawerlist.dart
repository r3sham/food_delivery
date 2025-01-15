import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key, required this.onTap, required this.text, required this.icon});
  final String text;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        onTap: onTap,
        title: Text(text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
        ),
        leading: Icon(icon,
          size: 25,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
    );
  }
}
