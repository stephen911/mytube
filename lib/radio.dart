import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_radio/flutter_radio.dart';

// void main() => runApp(new MyApp());

class RadioScreen extends StatefulWidget {
  @override
  _RadioScreenState createState() => new _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  String url =
      "http://mmg.streamguys1.com/JoyFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f";

  bool isPlaying = false;
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    audioStart();
  }

  Future<void> audioStart() async {
    await FlutterRadio.audioStart();
    print('Audio Start OK');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'MyTube Online Radio',
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: new AppBar(
            title: const Text('MyTube Online Radio'),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body: Container(
            color: Colors.grey,
            child: new Column(
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Icon(
                    Icons.radio,
                    size: 250,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Align(
                      alignment: FractionalOffset.center,
                      child: IconButton(
                        icon: isPlaying
                            ? Icon(
                                Icons.pause_circle_outline,
                                size: 80,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.play_circle_outline,
                                color: Colors.white,
                                size: 80,
                              ),
                        onPressed: () {
                          setState(() {
                            FlutterRadio.play(url: url);
                            isPlaying = !isPlaying;
                            isVisible = !isVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ));
  }
}

class RadioCard extends StatelessWidget {
  final image;
  final station;
  final tagline;
  final url;

  const RadioCard({Key key, this.image, this.station, this.tagline, this.url})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          //padding: EdgeInsets.all(1),
          margin: EdgeInsets.all(10),
          width: 130,
          //height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  blurRadius: 8,
                  color: Colors.blue,
                )
              ]),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fill)),
              ),
              Text(
                station,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5, bottom: 3, top: 2),
                child: Text(
                  tagline,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10), maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ), SizedBox(height: 3,)
            ],
          )), onTap: (){
            // setState(() {
            //                 FlutterRadio.play(url: url);
            //                 isPlaying = !isPlaying;
            //                 isVisible = !isVisible;
          },
    );
  }
}
