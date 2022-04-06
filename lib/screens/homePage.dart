import 'package:flutter/material.dart';
import 'package:qcoffee/utilities/drawerWidgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "Hoşgeldiniz",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _homePageInfo(),
    );
  }

  _homePageInfo() {
    return Container(
      margin: EdgeInsets.all(2.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/CoffeeBean.jpg"),
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Row(
        children: [
          Text("Osman", style: TextStyle(color: Colors.blueGrey)),
        ],
      ),
    );
  }
}
