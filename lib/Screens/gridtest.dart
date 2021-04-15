import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  // set an int with value -1 since no card has been selected
  int selectedCard = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.vertical,
        itemCount: 1,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 5.7),
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                // ontap of each card, set the defined int to the grid view index
                selectedCard = index;
              });
            },
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 10,
              color: Colors.red,
              child: Center(
                child: ListTile(
                  leading: Image(
                    image: AssetImage('images/b1.jpg'),
                  ),
                  trailing: Text(
                    "pop",
                    style: ksecondarytextstyle,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
