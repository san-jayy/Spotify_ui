import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class HomeGridContainers extends StatelessWidget {
  HomeGridContainers({this.gridContainers, this.height});
  final List<Gridlist> gridContainers;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: GridView.count(
          crossAxisCount: 1,
          mainAxisSpacing: 0.5,
          scrollDirection: Axis.horizontal,
          children: gridContainers
              .map((item) => Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(item.containerImage),
                                    fit: BoxFit.cover),
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            item.title,
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
