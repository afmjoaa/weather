import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../dto/weather_element_dto.dart';

class WeatherElementWidget extends StatelessWidget {
  final List<WeatherElementDto> itemList;

  const WeatherElementWidget(this.itemList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: itemList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:  3,
          mainAxisSpacing: 0,
          mainAxisExtent: 110
        ),
        itemBuilder: (_, int index) =>
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                      color: Color(0xffF4F4F8),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: SvgPicture.asset(
                      itemList[index].assetLocation,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(itemList[index].value,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                    ),)
                ],
              ),
            ),
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}
