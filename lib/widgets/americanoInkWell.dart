// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AmericanoInkWell extends StatelessWidget {

  String nameAmericano;
  String imageUrlAmericano;

  AmericanoInkWell(
      {required this.nameAmericano,
        required this.imageUrlAmericano,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildAmericanoCard(context),
      ],
    );
  }

  _buildAmericanoCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/americanoDetail');
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(this.imageUrlAmericano),
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
                  Text(this.nameAmericano,
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
