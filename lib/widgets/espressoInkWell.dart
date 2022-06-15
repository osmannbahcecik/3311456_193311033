import 'package:flutter/material.dart';

class EspressoInkWell extends StatelessWidget {

  String nameEspresso;
  String imageUrlEspresso;

  EspressoInkWell(
      {required this.nameEspresso,
        required this.imageUrlEspresso,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildEspressoCard(context),
      ],
    );
  }

  _buildEspressoCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/espressoDetail');
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(this.imageUrlEspresso),
              height: 250.0,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(this.nameEspresso,
                      style: TextStyle(fontSize: 16.0, color: Colors.black)),
                  const SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
