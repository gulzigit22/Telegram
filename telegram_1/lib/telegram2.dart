import 'package:flutter/material.dart';

void main() {
  runApp(mainig());
}

class mainig extends StatelessWidget {
  const mainig({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainig2(),
    );
  }
}

class mainig2 extends StatefulWidget {
  mainig2({Key key}) : super(key: key);

  @override
  State<mainig2> createState() => _mainig2State();
}

class _mainig2State extends State<mainig2> {
  get suffixIcon => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 59, 81),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879f),
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: ExactAssetImage('/images/pov1.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(
                  'эмирлан',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  'был() в 12:46',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 91, 89, 89)),
                )
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.phone,
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.menu)),
        ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        TextFormField(
          style: TextStyle(color: Colors.white),
          cursorHeight: MediaQuery.of(context).size.width * 0.055,
          textAlignVertical: TextAlignVertical.center,
          keyboardType: TextInputType.multiline,
          maxLines: 25,
          minLines: 1,
          decoration: InputDecoration(
            focusColor: Colors.white,
            fillColor: Colors.black.withOpacity(0.6),
            filled: true,

            // fillColor: Colors.white,
            border: InputBorder.none,
            hintText: "Сообщение",
            hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            contentPadding: EdgeInsets.only(bottom: 5.0, right: 10.0, top: 5.0),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.emoji_emotions_outlined),
                onPressed: () {},
              ),
            ),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.rotate(
                  angle: 320,
                  child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.attach_file),
                    onPressed: () {},
                  ),
                ),
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
