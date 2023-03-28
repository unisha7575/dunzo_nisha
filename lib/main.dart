
import 'package:flutter/material.dart';

import 'my_class/my_routes.dart';
import 'screens/atta_dal_list.dart';
import 'screens/atta_dal_list_view.dal.dart';
import 'screens/baby_care_list.dart';
import 'screens/baby_care_list_view.dart';
import 'screens/beverages_list.dart';
import 'screens/beverages_list_view.dart';
import 'screens/cleaning_household_list.dart';
import 'screens/cleaning_household_view.dart';
import 'screens/dairy_product_list.dart';
import 'screens/dairy_product_view.dart';
import 'screens/fruits_list_view_screen.dart';
import 'screens/fruits_view_screen.dart';
import 'screens/instant_food_list.dart';
import 'screens/instant_food_view.dart';
import 'screens/pet_care_list.dart';
import 'screens/pet_care_list_view.dart';
import 'screens/popular_view_screen.dart';
import 'screens/product_overview.dart';
import 'screens/snacks_list.dart';
import 'screens/snacks_list_view.dart';
import 'screens/vegetables_list_view.dart';
import 'screens/vegetables_view.dart';
import 'typeahead_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRoutes.initialRoutes,
      routes: {
        MyRoutes.initialRoutes: (context) => const ProductOverview(),
       // MyRoutes.initialRoutes: (context) => const TypeAheadScreen(),

        MyRoutes.overviewRoutes: (context) => const ProductOverview(),
        MyRoutes.popularViewScreenRoutes: (context) => const PopularViewScreen(),

        MyRoutes.fruitsListViewScreen: (context) => const FruitsViewScreen(),
        MyRoutes.fruitsListCategory: (context) => const FruitsListViewScreen(),

        MyRoutes.vegetablesListViewScreen: (context) => const VegetablesView(),

        MyRoutes.petCareList: (context) => const PetCareListView(),
        MyRoutes.petCareListCategory: (context) => const PetCareList(),

        MyRoutes.cleaningHouseHold: (context) => const CleaningHouseholdView(),
        MyRoutes.cleaningHouseHoldCategory: (context) => const CleaningHouseHoldList(),

         MyRoutes.babyCare: (context) => const BabyCareListView(),
        MyRoutes.babyCareCategory: (context) => const BabyCareList(),

        MyRoutes.beverages: (context) => const BeveragesListView(),
        MyRoutes.beveragesCategory: (context) => const BeveragesList(),

        MyRoutes.ataDal: (context) => const AttaDalListView(),
        MyRoutes.ataDalCategory: (context) => const AttaDalList(),


        MyRoutes.dairyProduct: (context) => const DairyProductView(),
        MyRoutes.dairyProductCategory: (context) => const DairyProductList(),



        MyRoutes.vegetableListViewScreen: (context) => const VegetablesListView(),

        MyRoutes.snackCategory: (context) => const SnacksList(),
        MyRoutes.snacks: (context) => const SnacksListView(),

        MyRoutes.instantFoodCategory: (context) => const InstantFoodList(),
        MyRoutes.instantFood: (context) => const InstantFoodView(),

      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
