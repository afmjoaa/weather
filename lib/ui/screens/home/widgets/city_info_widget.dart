import 'package:flutter/material.dart';

class CityInfoWidget extends StatelessWidget {
  final String date;
  final String city;

  const CityInfoWidget({Key? key, required this.date, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 5,
            left: 20,
            right: 20,
          ),
          alignment: Alignment.topLeft,
          child: const Text(
            'Today',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            city,
            style: const TextStyle(
              height: 1.3,
              fontSize: 38,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            date,
            style: const TextStyle(
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
