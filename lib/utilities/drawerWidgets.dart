import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset('assets/drawerpictures.jpg'),),
          ListTile(
              leading: Icon(Icons.account_balance_outlined, color: Colors.black),
              title: Text('Ana Sayfa'),
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              }),
          ListTile(
              leading: Icon(Icons.api, color: Colors.black),
              title: Text('Kahve Hakkında'),
              onTap: () {
                Navigator.pushNamed(context, '/coffeeInfo');
              }),
          ListTile(
              leading: Icon(Icons.api, color: Colors.black),
              title: Text('Kafein hakkında'),
              onTap: () {
                Navigator.pushNamed(context, '/caffeineInfo');
              }),
          ListTile(
              leading: Icon(Icons.api, color: Colors.black),
              title: Text('Kahve Bağımlılığı'),
              onTap: () {
                Navigator.pushNamed(context, '/coffeeAddiction');
              }),
          ListTile(
              leading: Icon(Icons.api, color: Colors.black),
              title: Text('Kahve Çeşitleri'),
              onTap: () {
                Navigator.pushNamed(context, '/productList');
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black),
              title: Text('Çıkış Yap'),
              onTap: () {
              }),
        ],
      ),
    );

  }
}