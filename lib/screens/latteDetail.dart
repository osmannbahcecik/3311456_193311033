import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class LatteDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LatteDetailState();
}

class _LatteDetailState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.brown,
        title: Text(
          "Ürün Detayı",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _buildProductDetails(context),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildRatingBar(),
              SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              SizedBox(
                height: 12.0,
              ),
              _buildInfo(),
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 2, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.0,
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.asset("assets/Latte.jpg"),
                    Image.asset("assets/CoffeeBean.jpg"),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95), //
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        "Latte",
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blueGrey,
          width: screenSize.width,
          height: 1.0,
        )
      ],
    );
  }

  _buildRatingBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                child:
                    Text("Ürün Bilgisi", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child:
                    Text("Hazırlanışı", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 80.0,
            child: TabBarView(
              controller: tabController,
              children: [
                Text("Grande bot (470ml) latte'de 150 mg kafein içerir.Bunda buharlaştırılan sütünde büyük payı vardır",
                    style: TextStyle(color: Colors.black)),
                Text(
                    "Sütün yarısından fazlası servis edilecek bardağa boşaltılır. Cezvede kalan süt blender ile tekrardan köpürtülür. Kahve bardağın kenarından yavaşça bardağa aktarılır. Cezvede kalan köpürtülmüş süt bardağın üzerine aktarılır ve servis edilir.",
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
