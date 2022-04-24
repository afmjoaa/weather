import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/comfort_level_widget.dart';
import '../widgets/city_info_widget.dart';
import '../widgets/sunrise_and_sunset_widget.dart';
import '../widgets/weather_element_widget.dart';
import '../widgets/weather_info_widget.dart';
import '../widgets/wind_widget.dart';

class CityScreen extends StatefulWidget {
  final zoomDrawerController;
  CityScreen({
    this.zoomDrawerController,
  });
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

  Future<void> _pullRefresh() async {

  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _pullRefresh,
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  widget.zoomDrawerController.toggle();
                  print(widget.zoomDrawerController);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 15,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/menu.svg',
                      fit: BoxFit.fitHeight,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
              ),
              const CityInfoWidget(),
              const WeatherInfoWidget(),
              const SizedBox(height: 20),
              const WeatherElementWidget(),
              const SunriseAndSunsetWidget(),
              ComfortLevelWidget(),
              const WindWidget()
            ],
          ),
        ),
      ),
    );
  }
}

/*
Container(
                      margin: EdgeInsets.only(left: 20, right: 5),
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: const Color(0xffE4E4EE),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(38),
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(38),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              '11:00am',
                              style: TextStyle(
                                color: Color(0xff171717),
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/icons/chuvacomraio.svg',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              '13°',
                              style: TextStyle(
                                color: Color(0xff171717),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
* */