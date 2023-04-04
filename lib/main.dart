import 'package:flutter/material.dart';
import 'package:meals_navigation_apps/screens/categories_screen.dart';
import 'package:meals_navigation_apps/screens/category_meals_screen.dart';
import 'package:meals_navigation_apps/screens/error_screen.dart';
import 'package:meals_navigation_apps/screens/filter_screen.dart';
import 'package:meals_navigation_apps/screens/meal_detail_screen.dart';
import 'package:meals_navigation_apps/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: TabsScreen(),
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // print(settings.name);
        return MaterialPageRoute(builder: (context) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        //last resort; fallback page
        return MaterialPageRoute(builder: (context) => ErrorScreen());
      },
    );
  }
}
