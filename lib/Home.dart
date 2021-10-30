import 'package:flutter/material.dart';
import 'package:flutter_project1/Home.dart';

class Home extends StatefulWidget {

@override 

State<StatefulWidget> createState() {
return HomeState();
}

}

class HomeState extends State<Home> {
 TextEditingController _foo = TextEditingController();

 void plzclickme() {

 }
Widget bulid (BuildContext context) {
 return  Scaffold(   //Scaffold >> is a material design for the body of app +شكل العناصر جوا body ال APP  + بيبقي موجود جوا الhome 
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.red,
          elevation: 0.0,  //shadow el-AppBarlنسبة
          centerTitle: true,
        ),
        body: //Text('Welcome to my First App'),
        //13 Container >> Column + Row widget
              // Container( 
                // color: Color(0xFFf1f1f1),  //0xFF : كود البداية //code el-hax : f1f1f1 وهكذا 
                // note: el-hexa code موجود فال dart: ui 
                // color: Colors.pink[100], // from 50 to 900 من غير كسور 
                  //  color: Color.fromRGBO(50, 80, 60, 0.6),
                  // color: Colors.blue.withOpacity(0.4),
                // width: MediaQuery.of(context).size.width / 2,
                // height: MediaQuery.of(context).size.height / 2,

                //#padding & margin >>
                // padding: EdgeInsets.all(50), // all & only(left: 10,top:10,...,..),
                // margin:  EdgeInsets.only(top: 20),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.black26,width: 5),
                // ),
                // child: Column(  //the father
                // //  mainAxisAlignment: MainAxisAlignment.center, // محاذاة النص بتم طوليا 
                // //  crossAxisAlignment: CrossAxisAlignment.end, //محاذاة النص بتم عرضيا
                // //  textDirection: TextDirection.ltr,
                // //  verticalDirection: VerticalDirection.up,  //from down to up والعكس
                //   children: [ //his children
                //     // Text('FOOFOOFOOFOOFOOFOOFOOFOOFOO',
                //     // textAlign: TextAlign.end,
                //     // ),
                //     // Text('Name'),
                //     // Text('height = ${MediaQuery.of(context).size.height}'),
                //     // Text('width = ${MediaQuery.of(context).size.width}'),

                //       Text('Doo Doo DOO dOO doo doo doo doo ooooooooooooooooo ddodododod',
                //       style: TextStyle(
                //         fontSize: 20,
                //         color: Colors.blue,
                //         fontStyle: FontStyle.normal,
                //       ),
                //         textAlign: TextAlign.center,
                //         softWrap: false,  //لو صح التيكست بيكمل فالسطر ال بعده انما لو فولس:هيكمل لبرا الشاشة
                //       ), 
                //   ],
                // ),
              // ),
            
              // Container(
              //   // color:  Colors.green,
              //    child: Column(
              //       // children: [
              //       //   Card(
              //       //     elevation: 5,
              //       //     color: Colors.amber,
              //       //     margin: EdgeInsets.all(30),
              //       //     child: Text('DFHMTUYJHETRHJMY,R RHTJETJH',
              //       //     style: TextStyle(
              //       //       fontSize: 30
              //       //     )
                        
              //       //     ),
              //       //     )
              //       //   ],
              //         children: [
              //           // FlatButton(

              //           //   child: Text('Click Me'),
              //           //   onPressed: clickme,
              //           //   color: Colors.blueGrey,
              //           //   colorBrightness: Brightness.dark,
              //           //   textColor: Colors.white,
              //           // ),

              //           //  FlatButton.icon(
              //           //   onPressed: clickme,
              //           //   color: Colors.amber,
              //           //   colorBrightness: Brightness.dark,
              //           //   label: Text('Click Me'),
              //           //   textColor: Colors.green,
              //           //   icon: Icon(Icons.access_alarm,size: 20,color: Colors.teal),
              //           //   ),

              //            Image.asset('image/sallly.jpeg',
              //            width: 200,
              //            height: 200,
              //            ),

              //            Image.network
              //            ('https://m.facebook.com/TubaBuyukustun/photos/happy-sunday-everyone/10160978275037729/'),
              //         ],

                       
              //       ),
              //     ),


              //#28 TextField basic Info
                Container(
                  child: Column(
                    children: [
                      Text('my value is = ${_foo.text}'),
                      TextField(
                        autocorrect: true,
                        textInputAction: TextInputAction.send, 
                        controller: _foo, //درس مهم جدا#29TextEditingController & setState To change values

                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        autofocus: false,
                        cursorColor: Colors.amber,  //لون الشرطة ال بتبان وانت بتكتب اي تيكست
                        maxLength: 6, //Number od words
                        maxLines: 5,  //Number of lines
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
                  
                  )

              );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}