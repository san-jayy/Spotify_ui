import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';

class SearchPage extends StatelessWidget {
  List<SearchGrid> _genres = [
    SearchGrid(image: 'images/b1.jpg', text: 'pop', colour: Colors.green),
    SearchGrid(
        image: 'images/b2.jpg', text: 'Hip Hop', colour: Colors.redAccent[700]),
    SearchGrid(image: 'images/b3.jpg', text: 'Folk', colour: Colors.pink),
    SearchGrid(
        image: 'images/b4.jpg', text: 'Bollywood', colour: Colors.blueAccent),
    SearchGrid(image: 'images/b6.jpg', text: 'Concerts', colour: Colors.blue),
    SearchGrid(
        image: 'images/b5.jpg', text: 'New Release', colour: Colors.teal),
    SearchGrid(
        image: 'images/s1.jpg', text: 'Charts', colour: Colors.purpleAccent),
    SearchGrid(
        image: 'images/s2.jpg', text: 'Made for u', colour: Colors.redAccent),
    SearchGrid(image: 'images/b3.jpg', text: 'Telugu', colour: Colors.yellow),
    SearchGrid(image: 'images/b4.jpg', text: 'Punjabi', colour: Colors.purple),
    SearchGrid(image: 'images/b1.jpg', text: 'Tamil', colour: Colors.green),
    SearchGrid(image: 'images/b1.jpg', text: 'pop', colour: Colors.green),
    SearchGrid(
        image: 'images/b2.jpg', text: 'Hip Hop', colour: Colors.redAccent[700]),
    SearchGrid(image: 'images/b3.jpg', text: 'Folk', colour: Colors.pink),
    SearchGrid(
        image: 'images/b4.jpg', text: 'Bollywood', colour: Colors.blueAccent),
    SearchGrid(image: 'images/b6.jpg', text: 'Concerts', colour: Colors.blue),
    SearchGrid(
        image: 'images/b5.jpg', text: 'New Release', colour: Colors.teal),
    SearchGrid(
        image: 'images/s1.jpg', text: 'Charts', colour: Colors.purpleAccent),
    SearchGrid(
        image: 'images/s2.jpg', text: 'Made for u', colour: Colors.redAccent),
    SearchGrid(image: 'images/b3.jpg', text: 'Telugu', colour: Colors.yellow),
    SearchGrid(image: 'images/b4.jpg', text: 'Punjabi', colour: Colors.purple),
    SearchGrid(image: 'images/b1.jpg', text: 'Tamil', colour: Colors.green),
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
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowGlow();
                return;
              },
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 3.5),
                children: _genres
                    .map((item) => Card(
                          elevation: 10,
                          color: item.colour,
                          child: Center(
                            child: ListTile(
                              leading: Text(
                                item.text,
                                style: ksecondarytextstyle,
                              ),
                              trailing: Transform.rotate(
                                angle: 270,
                                child: Transform.scale(
                                  scale: 1.2,
                                  child: Image(
                                    image: AssetImage(item.image),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
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

class SearchGrid {
  String image;
  String text;
  Color colour;
  SearchGrid({this.image, this.colour, this.text});
}
