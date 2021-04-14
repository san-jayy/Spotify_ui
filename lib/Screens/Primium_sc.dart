import 'package:flutter/material.dart';
import 'package:spotify_ui/Constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'primiumCards/primium_plancard.dart';
import 'primiumCards/pcontainer_card.dart';

class Premium extends StatefulWidget {
  @override
  _PremiumState createState() => _PremiumState();
}

class _PremiumState extends State<Premium> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 10, left: 30, right: 30),
              child: Text(
                'Get more out of your music with Premium',
                style: TextStyle(
                    letterSpacing: 0.8,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: 'Ad breaks',
                      c2text: 'Ad-free music',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: 'Play in shuffle',
                      c2text: 'Play any song',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: '6 skips per hour',
                      c2text: 'Unlimited skips',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: 'Streaming only',
                      c2text: 'Offline listening',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: '6 skips per hour',
                      c2text: 'Unlimited skips',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 25),
                    child: PcontainerCard(
                      c1text: 'Streaming only',
                      c2text: 'Offline listening',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 6,
                  effect: SlideEffect(
                      spacing: 7.0,
                      //radius: 2.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      dotColor: Colors.grey,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 2,
                      activeDotColor: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              onPressed: () {},
              child: Container(
                height: 54,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    'GET PREMIUM',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Terms and conditions apply',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Spotify Free',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'CURRENT PLAN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            PrimiumPlanCard(
              cardtitle: 'Premium Family',
              price: 'From ₹199',
              duration: 'FOR 1 MONTH',
              maintext:
                  'Chose 1, 3, 6 or 12 months of Premium . Pay with Paytm or UPI. Top up when you want',
              gradient1: Colors.purple[900],
              gradient2: Colors.pink,
            ),
            SizedBox(
              height: 40,
            ),
            PrimiumPlanCard(
              cardtitle: 'Mini',
              price: 'From ₹7',
              duration: 'FOR 1 DAY',
              maintext:
                  'Day and week plans * Ad-free music on mobile.Download 30 songs on 1 mobile device',
              gradient1: Colors.purple[900],
              gradient2: Colors.green,
            ),
            SizedBox(
              height: 40,
            ),
            PrimiumPlanCard(
              cardtitle: 'Premium Individual',
              price: 'From ₹129',
              duration: 'FOR 1 MONTH',
              maintext: 'Ad-free music * Download to listen  offline',
              gradient1: Colors.lightBlue,
              gradient2: Colors.purple[900],
            ),
          ],
        ),
      ),
    );
  }
}
