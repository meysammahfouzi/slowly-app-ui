import 'package:flutter/material.dart';
import 'package:slowly/custom_icons.dart';

class RecentlyReceivedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        createLogo(),
        createPageTitle(),
        SizedBox(height: 15),
        createLetterList(),
        SizedBox(height: 15),
        createFooter(),
        SizedBox(height: 12),
        createHorizontalLine(),
      ],
    );
  }

  Widget createLogo() {
    return Container(
      child: SizedBox(
        child: Image.asset('assets/images/logo.jpg'),
        height: 90,
      ),
      margin: EdgeInsets.only(left: 15, top: 115),
    );
  }

  Widget createPageTitle() {
    return Container(
      margin: EdgeInsets.only(left: 15),
      child: Text(
        "Recently Received",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildLetterHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Image.asset(
            'assets/images/double-checkmark.png',
            width: 20,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          child: Image.asset(
            'assets/images/stamp.jpg',
            width: 50,
          ),
        ),
      ],
    );
  }

  Widget createLetter() {
    return SizedBox(
      width: 150,
      height: 200,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildLetterHeader(),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                  "Hej! (This is hello in danish!) I'm Jens from Copenhagen, "
                  "Denmark..."),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Jens",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Today 6:42 am",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createLetterList() {
    return Container(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return SizedBox(
                width: 90,
              );
            }
            return createLetter();
          }),
    );
  }

  Widget createHorizontalLine() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      color: Colors.black26,
      height: 1.5,
      width: double.infinity,
    );
  }

  Widget createFooter() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20),
        Icon(CustomIcons.inbox, color: Colors.black54),
        SizedBox(width: 15),
        Text(
          'No incoming letter at this moment.',
          style: TextStyle(fontSize: 15, color: Colors.black54),
        )
      ],
    );
  }
}
