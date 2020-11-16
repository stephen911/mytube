import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_radio/flutter_radio.dart';
import 'package:flutter_share/flutter_share.dart';

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

// void main() => runApp(new MyApp());
class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  void click() {}
  final SnackBar snackBar =
      const SnackBar(content: Text("Apps button clicked"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: const Text('MyTube Online Radio'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Wrap(
            children: <Widget>[
              RadioScreen(
                image: "assets/images/peacefm.png",
                station: "Peace FM",
                tagline: "The Station With A Vision",
                url:
                    "http://mmg.streamguys1.com/PeaceFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/3fm.png",
                station: "3 FM",
                tagline: "Free and Square",
                url: "http://stream.zeno.fm/e5qwnn42u8quv",
              ),
              RadioScreen(
                image: "assets/images/adomfm.png",
                station: "Adom FM",
                tagline: "The Best Radio Station In Ghana",
                url:
                    "http://mmg.streamguys1.com/AdomFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/asempafm.png",
                station: "Asempa FM",
                tagline: "Eko Sii Sen",
                url:
                    "http://mmg.streamguys1.com/AsempaFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/ahotorfmpng.png",
                station: "Ahotor FM",
                tagline: "After Drive",
                url: "http://stream.zeno.fm/bbpfy9pk21zuv",
              ),
              RadioScreen(
                image: "assets/images/bbcnews.png",
                station: "BBC News",
                tagline: "News As It Happens",
                url:
                    "http://mmg.streamguys1.com/JoyFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/breezefm.png",
                station: "Breeze FM",
                tagline: "Feel The Breeze",
                url: "http://mmg.streamguys1.com/JoyFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/brytfm.png",
                station: "Bryt FM",
                tagline: "Brigthen Your Corner!",
                url:
                    "http://mmg.streamguys1.com/BrytFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/citifm.png",
                station: "Citi FM",
                tagline: "Best News!!!",
                url: "http://188.165.192.5:8977/stream/;",
              ),
              RadioScreen(
                image: "assets/images/dadifm.png",
                station: "Dadi FM",
                tagline: "More Music, More",
                url:
                    "http://mmg.streamguys1.com/DadiFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/franceradio.png",
                station: "France Radio",
                tagline: "International Radio",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/freedomfm.png",
                station: "Freedom Radio GH",
                tagline: "Aho To Fie",
                url:
                    "http://stream.zeno.fm/pq4dznd9k5zuv/;",
              ),
              RadioScreen(
                image: "assets/images/ghanatoday.png",
                station: "Ghana Today Radio",
                tagline: "Information Gateway to Ghana",
                url: "http://stream2.ghanatoday.com/gtonline/;",
              ),
              RadioScreen(
                image: "assets/images/happyfm.png",
                station: "Happy FM",
                tagline: "Anigye Nkoaa!!!",
                url: "https://atunwadigital.streamguys1.com/happyfm989accra",
              ),
              RadioScreen(
                image: "assets/images/highlifefm.png",
                station: "Highlife Radio",
                tagline: "Highlife Nkoaa",
                url:
                    "http://mmg.streamguys1.com/HighlifeFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/kasapafm.png",
                station: "Kasapa FM",
                tagline: "Agye Bebiaaa",
                url: "http://stream.zenolive.com/khacm7nv6gwtv",
              ),
              RadioScreen(
                image: "assets/images/joyfm.png",
                station: "Joy FM",
                tagline: "Joy FM Drive",
                url: "http://mmg.streamguys1.com/JoyFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f",
              ),
              RadioScreen(
                image: "assets/images/koowaa.png",
                station: "Koowaa FM",
                tagline: "Boga Wo Kroom!",
                url: "http://the.radioservers.biz:9852/;",
              ),
              RadioScreen(
                image: "assets/images/livefm.png",
                station: "Live Xtra",
                tagline: "Your Music Playstation",
                url: "http://stream.zeno.fm/3zxstnfydbruv",
              ),
              RadioScreen(
                image: "assets/images/marhabafm.png",
                station: "Marhaba FM",
                tagline: "Muryar",
                url: "http://centauri.shoutca.st:8862/",
              ),
              RadioScreen(
                image: "assets/images/mercuryfm.png",
                station: "New Mercury",
                tagline: "Th Super Power Station",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/nkonimfm.png",
                station: "Nkonim FM",
                tagline: "Nokware nkoaa!",
                url: "https://secure.lensnetworks.com/stream/nkonim937fm",
              ),
              RadioScreen(
                image: "assets/images/neatfm.png",
                station: "Neat FM",
                tagline: "Neat FM Drive",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/obonufm.png",
                station: "GBC Obonu FM",
                tagline: "Obonue Eegbee!!!",
                url: "http://173.249.50.205:8006/;",
              ),
              RadioScreen(
                image: "assets/images/ghanatoday.png",
                station: "Ghana Today Radio",
                tagline: "Information Gateway to Ghana",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/okayfm.png",
                station: "Okay FM",
                tagline: "Okay Fm Drive",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/omanfm.png",
                station: "Oman FM",
                tagline: "Oman Drive",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/onuafm.png",
                station: "Onua FM",
                tagline: "Onua Fm Drive",
                url: "http://stream.zeno.fm/hmz5ma42u8quv",
              ),
              RadioScreen(
                image: "assets/images/peacefm.png",
                station: "Peace Fm",
                tagline: "The station with a Vision",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/radiogold.png",
                station: "Radio Gold",
                tagline: "Your Power Station",
                url: "http://stream.zenolive.com/khacm7nv6gwtv",
              ),
              RadioScreen(
                image: "assets/images/spiritfm.png",
                station: "Spirit FM",
                tagline: "God still speaking today",
                url: "http://stream.zeno.fm/sde1ug58vqzuv",
              ),
              RadioScreen(
                image: "assets/images/starfm.png",
                station: "Starr FM",
                tagline: "Simply The Best",
                url: "http://stream.zenolive.com/ncwsgzh7hewtv",
              ),
              RadioScreen(
                image: "assets/images/sweetmelodies.png",
                station: "Sweet Melodies FM",
                tagline: "Sweet Melodies Drive",
                url: "http://197.251.194.215:8000/stream",
              ),
              RadioScreen(
                image: "assets/images/topfm.png",
                station: "Top FM",
                tagline: "Y3te so!!!",
                url: "http://184.154.43.106:8267/live",
              ),
              RadioScreen(
                image: "assets/images/kasapafm.png",
                station: "RFI Afrique",
                tagline: "Radio France Internationale",
                url: "https://rfiafrique96k.ice.infomaniak.ch/rfiafrique-96k.mp3",
              ),
              RadioScreen(
                image: "assets/images/xlive.png",
                station: "Xlive FM",
                tagline: "Live News!!!",
                url: "http://178.32.62.163:8785/",
              ),
              RadioScreen(
                image: "assets/images/xyz.png",
                station: "Radio XYZ",
                tagline: "Real Radio Starts here!",
                url: "http://stream.zeno.fm/5cy10m3y72quv",
              ),
              RadioScreen(
                image: "assets/images/akasanoma.png",
                station: "Akasanoma Radio",
                tagline: "Bringing Ghana To Your Living Room",
                url: "http://stream.zenolive.com/ey0fyngxva5tv",
              ),
              RadioScreen(
                image: "assets/images/ashfm.png",
                station: "Ash FM",
                tagline: "Adom Bi Nti",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/atinkafm.png",
                station: "Atinfa FM",
                tagline: "Osorie Mmre",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/easternfm.png",
                station: "Eastern FM",
                tagline: "Champion Station First In The Nation",
                url: "",
              ),
              RadioScreen(
                image: "assets/images/yfm.png",
                station: "Y FM",
                tagline: "Y Fm Drive",
                url: "https://atunwadigital.streamguys1.com/yfm1079accra",
              )
            ],
          ),
        ));
  }
}

class RadioScreen extends StatefulWidget {
  final image;
  final station;
  final tagline;
  final url;

  const RadioScreen({Key key, this.image, this.station, this.tagline, this.url})
      : super(key: key);
  @override
  _RadioScreenState createState() => new _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  // String url =
  //     "http://mmg.streamguys1.com/JoyFM-mp3?key=93fe20a16f78c70991fa726b9ca9c19c49f7329a3ad6144500e8fe7f3b8dadbafa6e84e66e84f9d149b17181fcf7194f";
  Future<void> share(dynamic url, station, tagline) async {
    await FlutterShare.share(
        title: tagline,
        text: station,
        linkUrl: url,
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
      share(widget.url, widget.station, widget.tagline);
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
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
        child: Container(
            //padding: EdgeInsets.all(1),
            margin: EdgeInsets.all(10),
            width: size.width / 2 - 20,
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.fill)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    
                        Container(
                          //color: Colors.red,
                          width: 110,
                          child: Column(children: <Widget>[Container(
                          width: 100,
                          margin: EdgeInsets.only(
                              left: 5, right: 5, bottom: 3, top: 2),
                              //color: Colors.green,
                          child: Text(
                            widget.station,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 15),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 5, right: 5, bottom: 3, top: 2),
                              //color: Colors.yellow,
                          width: 100,
                          child: Text(
                            widget.tagline,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ), 
                      ],
                    ),
                    ),  PopupMenuButton<String>(
                      onSelected: choiceAction,
                      itemBuilder: (BuildContext context) {
                        return Constants.choices.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    )],),
                SizedBox(
                  height: 3,
                )
              ],
            )),
        onTap: () {
          setState(
            () {
              FlutterRadio.play(url: widget.url);
              isPlaying = !isPlaying;
              isVisible = !isVisible;
            },
          );
        });
  }
}
