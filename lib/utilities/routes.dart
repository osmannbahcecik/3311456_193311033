import 'package:flutter/material.dart';
import 'package:qcoffee/screens/aboutPage.dart';
import 'package:qcoffee/screens/americanoDetail.dart';
import 'package:qcoffee/screens/caffeineInfo.dart';
import 'package:qcoffee/screens/caramelMacchiatoDetail.dart';
import 'package:qcoffee/screens/chart.dart';
import 'package:qcoffee/screens/coffeInfo.dart';
import 'package:qcoffee/screens/coffeeAddiction.dart';
import 'package:qcoffee/screens/espressoDetail.dart';
import 'package:qcoffee/screens/filterCoffeeDetail.dart';
import 'package:qcoffee/screens/homePage.dart';
import 'package:qcoffee/screens/latteDetail.dart';
import 'package:qcoffee/screens/productList.dart';
import 'package:qcoffee/screens/turkishCoffeeDetail.dart';

class Routes {
  static final routes = <String, WidgetBuilder>{
    '/productList': (context) => ProductList(),
    '/coffeeInfo': (context) => CoffeeInfo(),
    '/caffeineInfo': (context) => CaffeineInfo(),
    '/coffeeAddiction': (context) => CoffeeAddiction(),
    '/homePage': (context) => HomePage(),
    '/filterCoffeeDetail': (context) => FilterCoffeeDetail(),
    '/americanoDetail': (context) => AmericanoDetail(),
    '/latteDetail': (context) => LatteDetail(),
    '/turkishCoffeeDetail': (context) => TurkishCoffeeDetail(),
    '/espressoDetail': (context) => EspressoDetail(),
    '/caramelMacchiatoDetail': (context) => CaramelMacchiatoDetail(),
    '/hakkimizda': (context) => aboutPage(),
    '/statistic': (context) => ChartsGraph(),
  };
}
