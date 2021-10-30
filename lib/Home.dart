import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController _foo = TextEditingController();

  void plzclickme() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Scaffold >> is a material design for the body of app +شكل العناصر جوا body ال APP  + بيبقي موجود جوا الhome
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.red,
          elevation: 0.0, //shadow el-AppBarlنسبة
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Text('my value is = ${_foo.text}'),
              TextField(
                autocorrect: true,
                textInputAction: TextInputAction.send,
                controller:
                    _foo, //درس مهم جدا#29TextEditingController & setState To change values

                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                autofocus: false,
                cursorColor:
                    Colors.amber, //لون الشرطة ال بتبان وانت بتكتب اي تيكست
                maxLength: 6, //Number od words
                maxLines: 5, //Number of lines
                style: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 1,
                  wordSpacing: 1.5,
                  fontSize: 15,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.black38,
                ),
              ),
              TextButton(
                child: Text('Click Me'),
                onPressed: plzclickme,
              ),
            ],
          ),
        ));
  }
}
