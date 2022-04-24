import 'package:flutter/material.dart';

class CityInfoWidget extends StatelessWidget {
  const CityInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 20,
            right: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'Today',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'London',
            style: TextStyle(
              height: 1.3,
              fontSize: 38,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            '19-02-2021',
            style: TextStyle(
              height: 1.3,
              fontSize: 14,
              color: Color(0xffBDBCE1),
            ),
          ),
        ),
      ],
    );
  }
}
