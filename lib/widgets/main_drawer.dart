import 'package:flutter/material.dart';
import 'package:meals_navigation_apps/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 5, left: 20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).primaryColor,
          child: Text(
            'Cooking Up!',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 28,
                color: Colors.tealAccent),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        BuildListTiles('Meals', Icons.restaurant, () {
          Navigator.of(context).pushReplacementNamed('/');
        }),
        BuildListTiles('Filter', Icons.settings, () {
          Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
        }),
      ]),
    );
  }
}

class BuildListTiles extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tapHandler;

  BuildListTiles(this.title, this.icon, this.tapHandler);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
