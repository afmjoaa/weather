import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:shimmer/shimmer.dart';

class WeatherInfoWidget extends StatelessWidget {
  final String temp;
  final String weatherDes;
  final String iconUrl;

  const WeatherInfoWidget({Key? key, required this.temp, required this.weatherDes, required this.iconUrl}) : super(key: key);

  Widget get _placeHolderWidget {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(30),
      ),
      child: Shimmer.fromColors(
        baseColor: const Color(0xffefeff6),
        highlightColor: const Color(0xffe4e0ff),
        child: Container(
          color: Colors.white70,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CachedNetworkImage(
          imageUrl: iconUrl,
          width: 120,
          height: 120,
          placeholder: (_, __) => _placeHolderWidget,
          errorWidget: (_, __, error) => _placeHolderWidget,
          fit: BoxFit.contain,
          fadeOutDuration: const Duration(seconds: 1),
          fadeInDuration: const Duration(seconds: 2),
          cacheManager: DefaultCacheManager(),
        ),
        Container(
          height: 50,
          width: 1,
          color: const Color(0xffE4E4EE),
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