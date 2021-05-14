// @dart=2.11
import 'package:flutter/material.dart';
import 'package:tflite_flutter_plugin_example/classifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'about.dart';

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _controller;
  Classifier _classifier;
  List<Widget> _children;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _classifier = Classifier();
    _children = [];
    _children.add(Container());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
           actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage())
                    );
                  },
                  child: Icon(
                    Icons.info,
                    size: 26.0,
                  ),
                )
              )
           ],
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'EMO',
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 5.0,),
                Text(
                  'SENTIMENT',
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.redAccent, fontWeight: FontWeight.w900),
                ),
              ],
          ),
          elevation: 2.0,
          centerTitle: true,
       
        ),
        
        body: Container(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                itemCount: _children.length,
                itemBuilder: (_, index) {
                  return _children[index];
                },
              )),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white)),
                child: Row(children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: 'Please type over here',),
                      controller: _controller,
                    ),
                  ),
                  FlatButton(
                    child: Container(
                      padding: EdgeInsets.all(2.0),
                      child: Text('Classify',
                               style: GoogleFonts.abhayaLibre( 
                                  color: Colors.redAccent, fontWeight: FontWeight.w900,height: 2.0,fontSize: 20),
                    ),
                    ),
                    onPressed: () {
                      final text = _controller.text;
                      final prediction = _classifier.classify(text);
                      setState(() {
                        _children.add(Dismissible(
                          key: GlobalKey(),
                          onDismissed: (direction) {},
                          child: Card(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              // color: prediction[1] > prediction[0]
                              //     ? Colors.lightGreen
                              //     : Colors.redAccent,
                              color : Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Input: $text",
                                     style: GoogleFonts.abhayaLibre(
                                    color: prediction[1] > prediction[0] ? Colors.green : Colors.redAccent, fontWeight: FontWeight.w900, fontSize: 16),
                                    // style: const TextStyle(fontSize: 16),
                                  ),
                                  Text("Output:",
                                        style: GoogleFonts.abhayaLibre(
                                                  color: Colors.black, fontWeight: FontWeight.w900),
                                    ),
                                  Text("   Positive: ${prediction[1]}",
                                      style: GoogleFonts.abhayaLibre(
                                             color: Colors.green, fontWeight: FontWeight.w900),
                                  ),
                                  Text("   Negative: ${prediction[0]}",
                                      style: GoogleFonts.abhayaLibre(
                                         color: Colors.redAccent, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ));
                        _controller.clear();
                      });
                    },
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
