import 'package:flutter/material.dart';
import 'package:qcoffee/screens/americanoDetail.dart';
import 'package:qcoffee/screens/coffeInfo.dart';
import 'package:qcoffee/screens/coffeeAddiction.dart';
import 'package:qcoffee/screens/filterCoffeeDetail.dart';
import 'package:qcoffee/screens/homePage.dart';
import 'package:qcoffee/screens/latteDetail.dart';
import '../screens/caffeineInfo.dart';
import '../screens/productList.dart';
import '../screens/turkishCoffeeDetail.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/productList': (context) => ProductList(),
    '/coffeeInfo': (context) => CoffeeInfo(),
    '/caffeineInfo': (context) => CaffeineInfo(),
    '/coffeeAddiction': (context) => CoffeeAddiction(),
    '/homePage': (context) => HomePage(),
    '/filterCoffeeDetail': (context) => FilterCoffeeDetail(),
    '/americanoDetail': (context) => AmericanoDetail(),
    '/turkishCoffeeDetail': (context) => TurkishCoffeeDetail(),
    '/latteDetail': (context) => LatteDetail(),
  };
}
