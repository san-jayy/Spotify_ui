import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homeGridContainer.dart';
import '../../Constants.dart';

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
  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      child: SingleChildScrollView(
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
                      'Good Morning',
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  //color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/b2.jpg'), fit: BoxFit.cover),
                ),
                width: double.infinity,
                height: 250,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Recently played',
                  style: kprimarytextstyle,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              HomeGridContainers(
                gridContainers: _bgridcontainers,
                height: 170,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text('Sound of India', style: kprimarytextstyle),
              ),
              SizedBox(
                height: 6,
              ),
              HomeGridContainers(
                gridContainers: _gridContainers,
                height: 180,
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
                      'Shows To Try',
                      style: kprimarytextstyle,
                    ),
                  ],
                ),
              ),
              HomeGridContainers(
                gridContainers: _bgridcontainers,
                height: 190,
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Gridlist {
  String containerImage;
  String title;
  Gridlist({this.containerImage, this.title});
}
