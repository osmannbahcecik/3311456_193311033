import 'dart:ui';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:flutter/material.dart';

class CoffeeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "Kahve Hakkında",
          style: TextStyle(color: Colors.black),
        ),
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
      body: _CoffeeInfo(),
    );
  }
}

class _CoffeeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/coffeetree.jpg"), fit: BoxFit.cover),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: GlassContainer(
            borderRadius: BorderRadius.circular(25),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.113,
                height: MediaQuery.of(context).size.height,
                //alignment: Alignment.center,
                margin: EdgeInsets.only(left: 0, right: 0, top: 250, bottom: 0),
                child: Text(
                    "Kahve, kökboyasıgiller familyasının Coffea cinsinde yer alan bir ağaç ve bu ağacın meyve çekirdeklerinin kavrulup öğütülmesi ile elde edilen tozun su ya da süt ile karıştırılmasıyla yapılan içecektir Kahve ağacı gölgede ve bol su ile yetiştirilir. Bundan dolayı fidan şeklinde saksıya ektikten sonra bol su vermeli ve suyu ihmal etmemelisiniz. Toprağı nemli tutmak bu noktada önemlidir. Kahve ağacı yükseklerde yetişmeyi sever Yetişkinlerde günde 3-4 fincan kahve tüketimi yararlı etkiler sağlar. Yani maksimum kafein alımı günde 400 miligram geçmemeli yani 3 tatlı kaşığı kahveyi geçmemeli.",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Color(0xFF5A2525),
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
