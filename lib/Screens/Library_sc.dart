import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/main.dart';

class LibraryScreen extends StatefulWidget {
  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          bottom: TabBar(
            dragStartBehavior: DragStartBehavior.start,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'chats',
              ),
              Tab(
                text: 'chats',
              ),
              Tab(
                text: 'chats',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chats(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      height: 200,
      child: Container(
        padding: EdgeInsets.all(0),
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                dragStartBehavior: DragStartBehavior.start,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'chats',
                  ),
                  Tab(
                    text: 'chats',
                  ),
                  Tab(
                    text: 'chats',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Icon(Icons.directions_transit),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
