import 'package:flutter/material.dart';

class PcontainerCard extends StatelessWidget {
  final String c1text;
  final String c2text;
  PcontainerCard({this.c1text, this.c2text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 140,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'FREE',
                  style: TextStyle(color: Colors.white, letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(c1text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
        Container(
          height: 140,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.greenAccent[700],
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'PREMIUM',
                  style: TextStyle(color: Colors.white, letterSpacing: 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(c2text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
            ],
          ),
        )
      ],
    );
  }
}
