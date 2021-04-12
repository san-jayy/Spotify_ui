import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Constants.dart';

class Home0 extends StatelessWidget {
  final List<String> _simages = [
    'images/s1.jpg',
    'images/s3.jpg',
    'images/s4.jpg',
    'images/s5.jpg',
    'images/s6.jpg',
    'images/s1.jpg',
    'images/s3.jpg',
    'images/s4.jpg',
    'images/s5.jpg',
    'images/s6.jpg'
  ];
  final List<String> _bimages = [
    'images/b1.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
    'images/b2.jpg',
    'images/b5.jpg',
    'images/b6.jpg',
    'images/b1.jpg',
    'images/b2.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
    'images/b5.jpg',
    'images/b6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('images/b2.jpg'), fit: BoxFit.cover)),
              width: double.infinity,
              height: 250,
              // color: Colors.white,
            ),
            SizedBox(
              height: 40,
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
            Container(
              height: 150,
              child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  scrollDirection: Axis.horizontal,
                  children: _bimages
                      .map(
                        (item) => Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(05),
                                    image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover),
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList()),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Sound of India', style: kprimarytextstyle),
            ),
            SizedBox(
              height: 6,
            ),
            Column(
              children: [
                Container(
                  height: 165,
                  width: double.infinity,
                  child: GridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      scrollDirection: Axis.horizontal,
                      children: _simages
                          .map(
                            (item) => Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            image: AssetImage(item),
                                            fit: BoxFit.cover),
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList()),
                ),
                SizedBox(
                  height: 30,
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
                SizedBox(
                  height: 6,
                ),
                Container(
                  height: 150,
                  child: GridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      scrollDirection: Axis.horizontal,
                      children: _bimages
                          .map(
                            (item) => Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: DecorationImage(
                                            image: AssetImage(item),
                                            fit: BoxFit.cover),
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
