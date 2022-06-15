import 'package:flutter/material.dart';

class aboutPage extends StatefulWidget {
  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: Text(
          "Hakkımızda",
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
      body: InfoDetail(),
    );
  }

  InfoDetail() {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 100,
            width: 800,
            color: Colors.white70,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topLeft : Alignment.topRight,
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 1),
              child: Container(width: 200,height: 150,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(alignment: Alignment.centerLeft,fit: BoxFit.fill,
                      image: AssetImage("assets/Turkiye.png"),
                    )
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Text('Bu uygulama Mobil Programlama dersi için Osman BAHÇECİK tarafından 2022 yılında programlanmıştır.',style: TextStyle(fontSize: 20,),)
      ],
    );
  }
}
