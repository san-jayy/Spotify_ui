import 'package:flutter/material.dart';

class Tophomegrid extends StatelessWidget {
  final String image;
  final String text;
  Tophomegrid({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Center(
          child: Container(
              height: 60,
              width: 176,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(image),
                      alignment: Alignment.centerLeft)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 20, left: 60, bottom: 10),
                child: Center(
                  child: Text(
                    text,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
