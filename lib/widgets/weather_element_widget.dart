import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherElementWidget extends StatelessWidget {
  const WeatherElementWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffF4F4F8),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: SvgPicture.asset(
                'assets/icons/ventos.svg',
                alignment: Alignment.center,
              ),
            ),
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffF4F4F8),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: SvgPicture.asset(
                'assets/icons/nuvem.svg',
                alignment: Alignment.center,
              ),
            ),
            Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xffF4F4F8),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: SvgPicture.asset(
                'assets/icons/umidade.svg',
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 20,
              width: 60,
              child: Text(
                '19km/h',
                style: TextStyle(
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 20,
              width: 60,
              child: Text(
                '75%',
                style: TextStyle(
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 20,
              width: 60,
              child: Text(
                '85%',
                style: TextStyle(
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
