import 'package:flutter/material.dart';

class WeatherInfoWidget extends StatelessWidget {
  final String temp;
  final String weatherDes;

  const WeatherInfoWidget({Key? key, required this.temp, required this.weatherDes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/weathers/rain-cloud-sun@2x.png',
          height: 120,
        ),
        Container(
          height: 50,
          width: 1,
          color: Color(0xffE4E4EE),
        ),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '$temp°',
                style: const TextStyle(
                  fontFamily: 'MohrRounded',
                  fontWeight: FontWeight.w600,
                  fontSize: 68,
                  height: 0.8,
                  color: Color(0xff171717),
                ),
              ),
              TextSpan(
                text: '\n$weatherDes',
                style: const TextStyle(
                  fontFamily: 'MohrRounded',
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  height: 1.8,
                  color: Color(0xffBDBCE1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}