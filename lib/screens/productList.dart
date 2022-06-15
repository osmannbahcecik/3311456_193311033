import 'package:flutter/material.dart';
import 'package:qcoffee/widgets/caramelMacchiatoInkWell.dart';
import 'package:qcoffee/widgets/espressoInkWell.dart';
import '../widgets/americanoInkWell.dart';
import '../widgets/filterCoffeeInkWell.dart';
import '../widgets/latteInkWell.dart';
import '../widgets/turkishCoffeeInkWell.dart';

class ProductList extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kahve Çeşitleri",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.brown,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40.0,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: _buildProductListPage(),
    );
  }

  _buildProductListPage() {
    return ListView(
      children: <Widget>[
        _buildFilterWidgets(),
        _buildAmericano(),
        _buildLatte(),
        _buildFilterCoffee(),
        _buildEspresso(),
        _buildTurkishCoffee(),
        _buildCaramelMacchiato(),
      ],
    );
  }

  _buildFilterWidgets() {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: [
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          Text(title),
        ],
      ),
    );
  }

  _buildFilterCoffee() {
    return FilterCoffeeInkWell(nameFilterCoffee:"Filtre Kahve ",
        imageUrlFilterCoffee:"assets/FilterCoffee.jpg");
  }
  _buildAmericano() {
    return AmericanoInkWell(nameAmericano: "Americano ",
        imageUrlAmericano: "assets/Americano.jpg");
  }
  _buildLatte() {
    return LatteInkWell(nameLatte:"Caffe Latte",
        imageUrlLatte:"assets/Latte.jpg");
  }
  _buildTurkishCoffee() {
    return TurkishCoffeeInkWell(nameTurkishCoffee:"Türk Kahvesi ",
        imageUrlTurkishCoffee:"assets/TurkishCoffee.jpg");
  }
  _buildEspresso() {
    return EspressoInkWell(nameEspresso:"Espresso ",
        imageUrlEspresso:"assets/Espresso.jpg");
  }
  _buildCaramelMacchiato() {
    return CaramelMacchiatoInkWell(nameCaramelMacchiato:"Caramel Macchiato ",
        imageUrlCaramelMacchiato:"assets/CaramelMacchiato.jpg");
  }
}


