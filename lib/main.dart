import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'videos.dart';
import 'radio_page.dart';

class Constants {
  static const String Savetowatchlater = 'Save to Watch Later';
  static const String Savetoplaylist = 'Save to playlist';
  static const String Pause = 'Pause';
  static const String Delete = 'Delete from downloads';
  static const String Share = 'Share';
  static const String NotInterested = 'Not Interested';
  static const String Dontrecommend = 'Don\'t recommend channel';
  static const String Report = 'Report';

  static const List<String> choices = <String>[
    Savetowatchlater,
    Savetoplaylist,
    Pause,
    Delete,
    Share,
    NotInterested,
    Dontrecommend,
    Report
  ];
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mytube',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    print(pickedFile.path);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Future getPicture() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    print(pickedFile.path);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  final List<Widget> screens = [
    Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FloatingCard(title: "All"),
                FloatingCard(title: "computer Science"),
                FloatingCard(title: "Smartphones"),
                FloatingCard(title: "Tesla"),
                FloatingCard(title: "Mars"),
                FloatingCard(title: "Universe"),
                FloatingCard(title: "Spacecraft"),
                FloatingCard(title: "Got Talent"),
                FloatingCard(title: "Robot"),
                FloatingCard(title: "Watches"),
                FloatingCard(title: "Computer Application"),
                FloatingCard(title: "HTML"),
                FloatingCard(title: "WIndows 10"),
                FloatingCard(title: "Recently Uploaded"),
              ],
            )),
        
        VideoCard(
          title: "SteDap Technology Channel and entertainment channel too",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Stories(
                  logo: "assets/images/mytube.png",
                  image: "assets/images/corona.jpg",
                  title: "I am story",
                ),
                Stories(
                  logo: "assets/images/corona.jpg",
                  image: "assets/images/corona.jpg",
                  title:
                      "I am a story in the making. the place i come from is in the west in the central region it is a nice place",
                ),
                Stories(
                  logo: "assets/images/corona.jpg",
                  image: "assets/images/corona.jpg",
                  title: "I am a story",
                ),
                Stories(
                  logo: "assets/images/corona.jpg",
                  image: "assets/images/corona.jpg",
                  title: "I am story",
                ),
              ],
            )),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/mytube.png",
          channel: "Kweku",
          views: "5.7k",
          thumbnail: "assets/images/mytube.png",
          time: "9 days ago",
        ), //buildVideos(),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/mytube.png",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/mytube.png",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/mytube.png",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/mytube.png",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/mytube.png",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/mytube.png",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/mytube.png",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/mytube.png",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ),
        VideoCard(
          title: "Tech With Steve",
          logo: "assets/images/corona.jpg",
          channel: "Nana",
          views: "5.7k",
          thumbnail: "assets/images/corona.jpg",
          time: "9 months ago",
        ), //buildVideos()
      ])),
    ),
    Scaffold(
      body: SingleChildScrollView(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Fcard(
                  title: "Music",
                ),
                Fcard(title: "Gaming")
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 5),
              margin: EdgeInsets.only(top: 5),
              height: 50,
              decoration: BoxDecoration(color: Colors.red),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Trending videos",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "SEE ALL",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w800),
                    )
                  ]),
            ),
            VideoCard(
              title: "SteDap Technology Channel",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            )
          ])),
    ),
    Scaffold(
      body: SingleChildScrollView(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                    SubCircle(
                      logo: "assets/images/corona.jpg",
                    ),
                  ],
                )),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    FloatingCard(title: "All"),
                    FloatingCard(title: "computer Science"),
                    FloatingCard(title: "Smartphones"),
                    FloatingCard(title: "Tesla"),
                    FloatingCard(title: "Mars"),
                    FloatingCard(title: "Universe"),
                    FloatingCard(title: "Spacecraft"),
                    FloatingCard(title: "Got Talent"),
                    FloatingCard(title: "Robot"),
                    FloatingCard(title: "Watches"),
                    FloatingCard(title: "Computer Application"),
                    FloatingCard(title: "HTML"),
                    FloatingCard(title: "WIndows 10"),
                    FloatingCard(title: "Recently Uploaded"),
                  ],
                )),
            Container(
              height: 30,
              width: double.infinity,
              padding: EdgeInsets.only(left: 8),
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Stories",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Stories(
                      logo: "assets/images/mytube.png",
                      image: "assets/images/corona.jpg",
                      title: "I am story",
                    ),
                    Stories(
                      logo: "assets/images/corona.jpg",
                      image: "assets/images/corona.jpg",
                      title: "I am story",
                    ),
                    Stories(
                      logo: "assets/images/corona.jpg",
                      image: "assets/images/corona.jpg",
                      title: "I am story",
                    ),
                    Stories(
                      logo: "assets/images/corona.jpg",
                      image: "assets/images/corona.jpg",
                      title: "I am story",
                    ),
                  ],
                )),
            VideoCard(
              title: "SteDap Technology Channel",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/mytube.png",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/mytube.png",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            ),
            VideoCard(
              title: "Tech With Steve",
              logo: "assets/images/corona.jpg",
              channel: "Nana",
              views: "5.7k",
              thumbnail: "assets/images/corona.jpg",
              time: "9 months ago",
            )
          ])),
    ),
    Scaffold(),
    Scaffold(),
  ];
  int selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.play_arrow),
        title: Text("MyTube",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "CopperBlack",
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print("video");
                getPicture();
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("search");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RadioPage()));
              }),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print("account");
                getImage();
              }),
        ],
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: new Text(
                "Home",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.explore,
                color: Colors.red,
              ),
              title: new Text(
                "Explore",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.subscriptions,
                color: Colors.red,
              ),
              title: new Text(
                "Subscriptions",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.notifications,
                color: Colors.red,
              ),
              title: new Text(
                "Notifications",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
              )),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.video_library,
                color: Colors.red,
              ),
              title: new Text(
                "Library",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.w700),
              )),
        ],
        currentIndex: selectedIndex,
        onTap: onTabTapped,
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String thumbnail;
  final String logo;
  final String title;
  final String channel;
  final String views;
  final String time;

  const VideoCard({
    Key key,
    this.thumbnail,
    this.title,
    this.logo,
    this.channel,
    this.views,
    this.time,
  }) : super(key: key);

  Future<void> share(
    dynamic title,
    channel,
    logo,
  ) async {
    await FlutterShare.share(
        title: title,
        text: channel,
        linkUrl: logo,
        chooserTitle: "Tap an icon below to share your content directly");
  }

  void choiceAction(String choice) {
    if (choice == Constants.Savetowatchlater) {
      print('Save To watch Later');
    } else if (choice == Constants.Savetoplaylist) {
      print('Save to playlist');
    } else if (choice == Constants.Pause) {
      print('pause');
    } else if (choice == Constants.Share) {
      print('Share');
      share(title, channel, logo);
    } else if (choice == Constants.Delete) {
      print('Delete');
    } else if (choice == Constants.NotInterested) {
      print('Not Interested');
    } else if (choice == Constants.Dontrecommend) {
      print('Dont recommend Channel');
    } else if (choice == Constants.Report) {
      print('Report');
    }
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      width: double.infinity,
      height: 280,
      child: Column(children: <Widget>[
        Container(
            //margin: EdgeInsets.all(5),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(thumbnail), fit: BoxFit.fill),
            )),
        Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(logo), fit: BoxFit.fill),
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            //color: Colors.blue),
            //child: Image.asset(logo, fit: BoxFit.contain,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 230.0,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                //decoration: BoxDecoration(color: Colors.blue),
              ),
              Row(
                children: [
                  Text(channel),
                  Text("   -   "),
                  Text("$views" + " views"),
                  Text("   -   "),
                  Text(time),
                  SizedBox(
                    width: 10,
                  ),

                  // SizedBox(
                  //   width: 100,
                  // ),
                ],
              )
            ],
          ),
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ])
      ]),
    );
  }
}

class Navscreen extends StatefulWidget {
  @override
  _NavscreenState createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  final List<Icon> icons = [
    Icon(Icons.home),
    Icon(Icons.explore),
    Icon(Icons.subscriptions),
    Icon(Icons.notifications),
    Icon(Icons.video_library),
  ];
  int selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: new Icon(Icons.home), title: new Text("Home")),
        BottomNavigationBarItem(
            icon: new Icon(Icons.explore), title: new Text("Explore")),
        BottomNavigationBarItem(
            icon: new Icon(Icons.subscriptions),
            title: new Text("Subscriptions")),
        BottomNavigationBarItem(
            icon: new Icon(Icons.notifications),
            title: new Text("Notifications")),
        BottomNavigationBarItem(
            icon: new Icon(Icons.video_library), title: new Text("Library")),
      ],
      currentIndex: selectedIndex,
      onTap: onTabTapped,
    );
  }
}

class SubCircle extends StatelessWidget {
  final String logo;

  const SubCircle({Key key, this.logo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.fill),
        //color: Colors.blue,
        borderRadius: BorderRadius.circular(50),
      ),
      //color: Colors.blue),
      //child: Image.asset(logo, fit: BoxFit.contain,),
    );
  }
}

class Fcard extends StatelessWidget {
  final String title;
  const Fcard({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.red,
      ),
    );
  }
}

class FloatingCard extends StatelessWidget {
  final String title;
  const FloatingCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      // height: 40,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 0),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
      ),
    );
  }
}

class Stories extends StatelessWidget {
  final String logo;
  final String image;
  final String title;
  const Stories({Key key, this.logo, this.image, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          top: 20,
          left: 15,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 5),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(logo), fit: BoxFit.fill),
              //color: Colors.blue,
              borderRadius: BorderRadius.circular(50),
            ),
            //color: Colors.blue),
            //child: Image.asset(logo, fit: BoxFit.contain,),
          ),
        ),
        Positioned(
            bottom: 15.0,
            left: 10,
            child: Container(
              width: 140,
              height: 80,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ))
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
