import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homeGridContainer.dart';
import '../../Constants.dart';
import 'topGrid.dart';
import 'package:spotify_ui/Screens/play.dart';

class Home0 extends StatefulWidget {
  @override
  _Home0State createState() => _Home0State();
}

class _Home0State extends State<Home0> {
  final List<Gridlist> _gridContainers = <Gridlist>[
    Gridlist(containerImage: 'images/s1.jpg', title: 'Sound of bengaluru'),
    Gridlist(containerImage: 'images/s2.jpg', title: 'Sound of Delhi'),
    Gridlist(containerImage: 'images/s4.jpg', title: 'Sound of Chennai'),
    Gridlist(containerImage: 'images/s5.jpg', title: 'Sound of Mumbai'),
    Gridlist(containerImage: 'images/s6.jpg', title: 'Sound of Hyderabad'),
    Gridlist(containerImage: 'images/s3.jpg', title: 'Sound of Kolkatta'),
  ];
  final List<Gridlist> _bgridcontainers = [
    Gridlist(containerImage: 'images/b1.jpg', title: 'Release Radar'),
    Gridlist(containerImage: 'images/b3.jpg', title: 'Happy-O-Happy'),
    Gridlist(containerImage: 'images/b4.jpg', title: 'Bollywood 2.0'),
    Gridlist(containerImage: 'images/b2.jpg', title: 'Bandi Beats'),
    Gridlist(containerImage: 'images/b5.jpg', title: 'Bollywood Mash'),
    Gridlist(containerImage: 'images/b6.jpg', title: 'Bombay Bantai'),
  ];

  String _greetingText = 'Good Morning';
  String _lable1 = 'Recently played';
  String _lable2 = 'Sound of India';
  String _lable3 = 'Shows to try';
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: Stack(children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _greetingText,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Tophomegrid(
                            image: 'images/b6.jpg',
                            text: 'Top-hits',
                          ),
                          Tophomegrid(
                            image: 'images/b2.jpg',
                            text: 'Tea-times',
                          ),
                          Tophomegrid(
                            image: 'images/s5.jpg',
                            text: 'hell',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Tophomegrid(
                            image: 'images/s4.jpg',
                            text: 'Folk',
                          ),
                          Tophomegrid(
                            image: 'images/b5.jpg',
                            text: 'Evng Beats',
                          ),
                          Tophomegrid(
                            image: 'images/b3.jpg',
                            text: 'Tollywood',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    _lable1,
                    style: kprimarytextstyle,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                HomeGridContainers(
                  gridContainers: _bgridcontainers,
                  height: 180,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(_lable2, style: kprimarytextstyle),
                ),
                SizedBox(
                  height: 6,
                ),
                HomeGridContainers(
                  gridContainers: _gridContainers,
                  height: 175,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _lable3,
                        style: kprimarytextstyle,
                      ),
                    ],
                  ),
                ),
                HomeGridContainers(
                  gridContainers: _bgridcontainers,
                  height: 180,
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: PlayContainer(),
        )
      ]),
    );
  }
}

class Gridlist {
  String containerImage;
  String title;
  Gridlist({this.containerImage, this.title});
}
