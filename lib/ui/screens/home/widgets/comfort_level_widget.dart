import 'package:flutter/material.dart';

import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ComfortLevelWidget extends StatelessWidget {
  final double humidity;
  final double feelsLike;
  final double pressure;

  const ComfortLevelWidget(
      {Key? key,
      required this.humidity,
      required this.feelsLike,
      required this.pressure})
      : super(key: key);

  static const List<Color> cores = [
    Color(0xffDACAFF),
    Color(0xff59BDFF),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF4F4F8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(60),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(60),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                'Comfort Level',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: SleekCircularSlider(
                    min: 0,
                    max: 100,
                    initialValue: humidity,
                    appearance: CircularSliderAppearance(
                      animationEnabled: false,
                      customWidths: CustomSliderWidths(
                        handlerSize: 0,
                        trackWidth: 12,
                        progressBarWidth: 12,
                      ),
                      size: 130,
                      customColors: CustomSliderColors(
                        progressBarColors: cores,
                        trackColor: Color(0xffF4F4F8),
                        dynamicGradient: true,
                        hideShadow: true,
                      ),
                      infoProperties: InfoProperties(
                          mainLabelStyle: TextStyle(
                            letterSpacing: 0.1,
                            height: 1.0,
                            fontSize: 27,
                            fontFamily: 'MohrRounded',
                          ),
                          bottomLabelText: ('Humidity'),
                          bottomLabelStyle: TextStyle(
                            letterSpacing: 0.1,
                            height: 1.4,
                            fontSize: 14,
                            fontFamily: 'MohrRounded',
                          )),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Feels Like',
                            style: TextStyle(
                              fontFamily: 'MohrRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 0.8,
                              color: Color(0xffBDBCE1),
                            ),
                          ),
                          TextSpan(
                            text: ' $feelsLike°',
                            style: TextStyle(
                              fontFamily: 'MohrRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 0.8,
                              color: Color(0xff171717),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      height: 25,
                      width: 1,
                      color: Color(0xffE4E4EE),
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Pressure',
                            style: TextStyle(
                              fontFamily: 'MohrRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 0.8,
                              color: Color(0xffBDBCE1),
                            ),
                          ),
                          TextSpan(
                            text: ' $pressure hPa',
                            style: TextStyle(
                              fontFamily: 'MohrRounded',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              height: 0.8,
                              color: Color(0xff171717),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
