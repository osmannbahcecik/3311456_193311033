import 'package:flutter/material.dart';
import 'package:qcoffee/screens/showCaseDetail.dart';
import 'package:qcoffee/utilities/drawerWidgets.dart';
import 'package:qcoffee/screens/showCaseDetail.dart';

List<ImageDetails> _images = [
  ImageDetails(
      imagePath: 'assets/espressoMachine.jpg',
      title: 'Espresso Makinesi',
      details: 'Espresso elde etmek için kullanılır'),
  ImageDetails(
      imagePath: 'assets/chemex.jpg',
      title: 'Chemex',
      details: 'Filtre kahve demlemek için kullanılır'),
  ImageDetails(
      imagePath: 'assets/v60.jpg',
      title: 'V60',
      details: 'Filtre kahve demlemek için kullanılır'),
  ImageDetails(
      imagePath: 'assets/frenchPress.jpg',
      title: 'French Press',
      details: 'Filtre kahve demlemek için kullanılır'),
  ImageDetails(
      imagePath: 'assets/mokaPot.jpg',
      title: 'Moka Pot',
      details: 'Filtre kahve demlemek için kullanılır'),
  ImageDetails(
      imagePath: 'assets/v60.jpg',
      title: 'asd',
      details: 'Detaylar'),
  ImageDetails(
      imagePath: 'assets/v60.jpg',
      title: 'das ',
      details: 'Detaylar'),
  ImageDetails(
      imagePath: 'assets/v60.jpg',
      title: 'sad',
      details: 'Detaylar'),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          "Ana Sayfa",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _homePageInfo(),
      backgroundColor: Colors.black26,
    );
  }

  _homePageInfo() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "Galeri",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.brown,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(
                            imagePath: _images[index].imagePath,
                            details: _images[index].details,
                            title: _images[index].title,
                          ),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(_images[index].imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              itemCount: _images.length,
            ),
          )),
        ],
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String title;
  final String details;
  ImageDetails(
      {required this.imagePath, required this.title, required this.details});
}
