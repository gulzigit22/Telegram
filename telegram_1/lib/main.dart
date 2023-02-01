import 'package:flutter/material.dart';
import 'package:telegram_1/telegram2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 37, 58),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879f),
        title: Text(
          'Telegram 11',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.blue,
              child: Container(
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: ExactAssetImage('/images/popp11.jpeg'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Талантбек уулу гулжигит',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Text(
                          '+996 700 45 77 11',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 60, 57, 57)),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined, 
                          size: 30,
                          color: Colors.white,
                        ),
                      ],),
                    ],
                  ),
                ),
              ), 
            ),
            lister(msg: 'Создать', im: Icons.people),
            lister(msg: 'Контакты', im: Icons.contacts_sharp),
            lister(msg: 'Звоноки', im: Icons.phone),
            lister(msg: 'Людт рядом', im: Icons.ring_volume),
            lister(msg: 'Избранное', im: Icons.bookmark),
            lister(msg: 'Настройки', im: Icons.settings),
            Divider(
              height: 10,
            ),
            lister(msg: 'Пригласть друзей', im: Icons.contacts_sharp),
            lister(msg: 'Возможности Telegram', im: Icons.question_mark),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => mainig2()));
        }),
        child: ListTile(
          contentPadding: EdgeInsets.only(top: 5, left: 10),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: ExactAssetImage('/images/pov1.jpg'),
          ),
          title: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Эмирлан',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.white),
                ),
                Text(
                  '21:24pm',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white),
                )
              ],
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ассалоомуу алейкуум',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                Container(
                  child: Text('1', style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile lister({String msg, IconData im}) {
    return ListTile(
      leading: Icon(
        im,
        color: Colors.black45,
        size: 25,
      ),
      title: Text(
        msg,
        style: TextStyle(color: Colors.black54, fontSize: 15),
      ),
    );
  }
}
 