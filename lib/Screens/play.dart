import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';

class PlayContainer extends StatefulWidget {
  @override
  _PlayContainerState createState() => _PlayContainerState();
}

class _PlayContainerState extends State<PlayContainer> {
  Icon playIcon = Icon(Icons.play_arrow);
  Icon pauseIcon = Icon(Icons.play_arrow);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      color: Colors.grey[850],
      child: Row(
        children: [
          Image(image: AssetImage('images/b2.jpg')),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bombay Bantai',
                  style: ksecondarytextstyle,
                ),
                Text(
                  'By spotify',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.headset_mic,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: playIcon,
              color: Colors.white,
              iconSize: 35,
              onPressed: () {
                setState(() {
                  playIcon = Icon(Icons.pause);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
