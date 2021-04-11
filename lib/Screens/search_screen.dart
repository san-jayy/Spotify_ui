import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';

class SearchPage extends StatelessWidget {
  final List<String> _simages = [
    'images/b1.jpg',
    'images/b2.jpg',
    'images/b3.jpg',
    'images/b4.jpg',
    'images/b5.jpg',
    'images/b6.jpg',
    'images/s1.jpg',
    'images/s3.jpg',
    'images/s4.jpg',
    'images/s5.jpg',
    'images/s6.jpg',
    'images/b2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Search',
            style: kprimarytextstyle,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            child: TextField(
              decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'Artists,songs,or podcasts',
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Text(
            'Your top genres',
            style: kprimarytextstyle,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 18,
              crossAxisSpacing: 18,
              scrollDirection: Axis.vertical,
              children: _simages
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(item), fit: BoxFit.cover),
                          color: Colors.white),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
