import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tugas 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Independence Day Indonesia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.refresh),
              tooltip: 'reload',
              onPressed:  () {
                print("refresh me");
                setState(() {});
              },
            ),
             

          )
        
        ],
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: new Image.network(
                    "https://virtual-race-submissions.s3-ap-southeast-1.amazonaws.com/images/1900x1000-jpg-9sc17062019-93856",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(

                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Icon(Icons.flag),
                      Text(
                    "Independence Day !!!!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,fontStyle: FontStyle.italic),
                  ),
                  Icon(Icons.flag)
                    ],
                  )
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.brown,
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    " Kami Bangsa Indonesia dengan ini menyatakan kemerdakaan indonesia, hal-hal yang mengenai pemindahan kekuasaan dll, diselenggarakan dengan cara seksama dan dalam tempoh yang sesingkat singkatnya",
                    style: TextStyle(color: Colors.white,),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container( padding: EdgeInsets.only(top: 10,right: 15 ),
                color: Colors.brown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
  Text(
                  "Djakarta, \nhari 17 boelan 8 tahoen 45 \n Atas nama bangsa Indonesia.\nSoekarno/Hatta.",style: TextStyle(
                    color: Colors.white

                  ),
                

                )
],
                    )
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: new Image.network(
                    "https://cdn0-production-images-kly.akamaized.net/dRpGaj4zfbgsPQLxKl17oAf8DTI=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2936911/original/099189500_1570787253-20191011-Presiden-Jokowi-Terima-Prabowo-di-Istana-Merdeka-6.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: new Image.network(
                    "https://cdn0-production-images-kly.akamaized.net/zG86d5P6-MIgXqRaqjQU5O1OGDo=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2705904/original/061383100_1547698091-1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
