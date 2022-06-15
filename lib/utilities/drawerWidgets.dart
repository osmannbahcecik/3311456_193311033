import 'package:flutter/material.dart';
import 'package:qcoffee/service/authService.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    AuthService _authService = AuthService();
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset('assets/drawerpictures.jpg'),
          ),
          ListTile(
              leading:
                  Icon(Icons.account_balance_outlined, color: Colors.black),
              title: Text('Ana Sayfa'),
              onTap: () {
                Navigator.pushNamed(context, '/homePage');
              }),
          ListTile(
              leading: Icon(Icons.coffee, color: Colors.black),
              title: Text('Kahve Hakkında'),
              onTap: () {
                Navigator.pushNamed(context, '/coffeeInfo');
              }),
          ListTile(
              leading: Icon(Icons.coffee, color: Colors.black),
              title: Text('Kafein hakkında'),
              onTap: () {
                Navigator.pushNamed(context, '/caffeineInfo');
              }),
          ListTile(
              leading: Icon(Icons.coffee_outlined, color: Colors.black),
              title: Text('Kahve Bağımlılığı'),
              onTap: () {
                Navigator.pushNamed(context, '/coffeeAddiction');
              }),
          ListTile(
              leading: Icon(Icons.coffee_maker, color: Colors.black),
              title: Text('Kahve Çeşitleri'),
              onTap: () {
                Navigator.pushNamed(context, '/productList');
              }),
          ListTile(
              leading: Icon(Icons.bar_chart, color: Colors.black),
              title: Text('İstatistikler'),
              onTap: () {
                Navigator.pushNamed(context, '/statistic');
              }),
          ListTile(
              leading: Icon(Icons.info_outline, color: Colors.black),
              title: Text('Hakkımızda'),
              onTap: () {
                Navigator.pushNamed(context, '/hakkimizda');
              }),
          SizedBox(
            height: 18.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120,0,0,0),
            child: Text('Çıkış Yap',style: TextStyle(fontSize: 15),),
          ),
          IconButton(
            onPressed: () {
              _authService.signOut();
              Navigator.pushReplacementNamed(context, '/');
            },
            icon: Icon(Icons.logout),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
