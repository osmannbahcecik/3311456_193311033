import 'package:flutter/material.dart';

class LatteInkWell extends StatelessWidget {
  String nameLatte;
  String imageUrlLatte;

  LatteInkWell({
    required this.nameLatte,
    required this.imageUrlLatte,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildProductItemsCard(context),
      ],
    );
  }

  _buildProductItemsCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/latteDetail');
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(this.imageUrlLatte),
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
                  Text(this.nameLatte,
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
