import 'dart:ui';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:flutter/material.dart';

class CaffeineInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "Kafein Hakkında",
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
      body: _CaffeineInfo(),
    );
  }
}

class _CaffeineInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/caffeine.jpg"), fit: BoxFit.cover),
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
                    "Kafein, matein veya guaranin olarak da bilinen bir alkaloiddir. Kahvede, çayda, yerba mate'de, guarana'da ve, az miktarda, kakao içinde bulunur. Kafeinin karakteristik, yoğun bir acı tadı vardır. Kola gibi bazı gazlı içeceklere tat vermesi için eklenmektedir. Pek çok çalışmada, yetişkinler için güvenli olarak tüketilebilecek kafein miktarının günde 300 mg (yaklaşık 3-4 fincan kahve ya da 5-6 büyük bardak çay) olduğu belirtilmiştir.",
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
