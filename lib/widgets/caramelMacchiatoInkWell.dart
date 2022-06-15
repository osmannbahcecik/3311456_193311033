import 'package:flutter/material.dart';

class CaramelMacchiatoInkWell extends StatelessWidget {

  String nameCaramelMacchiato;
  String imageUrlCaramelMacchiato;

  CaramelMacchiatoInkWell(
      {required this.nameCaramelMacchiato,
        required this.imageUrlCaramelMacchiato,});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildCaramelMacchiatoCard(context),
      ],
    );
  }

  _buildCaramelMacchiatoCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/caramelMacchiatoDetail');
      },
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              child: Image.asset(this.imageUrlCaramelMacchiato),
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
                  Text(this.nameCaramelMacchiato,
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
