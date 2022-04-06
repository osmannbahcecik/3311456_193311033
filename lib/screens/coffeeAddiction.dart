import 'dart:ui';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:flutter/material.dart';

class CoffeeAddiction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "Kahve Bağımlılığı Hakkında",
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
      body: _CoffeeAddiction(),
    );
  }
}

class _CoffeeAddiction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/CoffeeBean.jpg"), fit: BoxFit.cover),
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
                    "Kahve, çay, kola, asitli kutu içecekler, kakaolu tatlılar. Tüm bu ürünlerin ortak noktası, yüksek miktarda keyif verici bir madde olan kafein içermeleri. Gün içerisinde en fazla 300 mg kafein tüketimi normal kabul edilirken, 700 mg’nin üzeri bağımlılık seviyesi olarak kabul ediliyor. Özellikle sigara bağımlılığı, eş zamanlı olarak kahve ve çay bağımlılığını da beraberinde getiriyor. Nikotin ile birleşen kafeinin bağımlılık yapma olasılığı çok daha fazla. Bağımlıların yoksunlukları, “kahve içmeden uyanamıyorum” bahanesiyle başlar ve gün içindeki tüm boş vakitler kafeinli içeceklerle doldurulur. Gereksinim karşılanamadığında; baş ağrısı, yorgunluk, uykusuzluk ya da uyku hali, konsantrasyon eksikliği, iş gücü kaybı gibi yoksunluk belirtileri ortaya çıkarken; beraberinde depresyon, ülser başlangıcı ve çarpıntı gibi ciddi sağlık sorunları da gözlenebilir.",
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
