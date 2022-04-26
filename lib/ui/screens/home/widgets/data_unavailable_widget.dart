import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/ui/screens/home/cubit/home_cubit.dart';
import 'package:weather/ui/screens/home/cubit/home_state.dart';
import 'package:weather/utility/sunny_texts.dart';
import 'package:geolocator/geolocator.dart';

class DataUnavailableWidget extends StatelessWidget {
  final DataUnavailableReason dataUnavailableReason;

  const DataUnavailableWidget({Key? key, required this.dataUnavailableReason}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, ((MediaQuery.of(context).size.height-350)/2).abs(), 24, 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/error.svg',
            fit: BoxFit.contain,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 16),
          Text(
            dataUnavailableReason == DataUnavailableReason.noInternetAndCache?
            SunnyTexts.get()['noLocalData'] :
            dataUnavailableReason == DataUnavailableReason.locationPermissionDenied?
            SunnyTexts.get()['noLocationPermission'] :
            SunnyTexts.get()['locationNotEnabled'],
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            style: TextButton.styleFrom(),
            onPressed: () async {
              if(dataUnavailableReason == DataUnavailableReason.noInternetAndCache) {
                context.read<HomeCubit>().getCurrentWeather();
              } else if(dataUnavailableReason == DataUnavailableReason.locationPermissionDenied) {
                await Geolocator.openAppSettings();
              }else {
                await Geolocator.openLocationSettings();
              }
            },
            child: Text(
              dataUnavailableReason == DataUnavailableReason.noInternetAndCache?
              SunnyTexts.get()['refreshCTA'] :
              dataUnavailableReason == DataUnavailableReason.locationPermissionDenied?
              SunnyTexts.get()['requestLocationPermissionCTA'] :
              SunnyTexts.get()['enableLocationCTA'],
              style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
              ),
            ),
          )
        ],
      ),
    );
  }
}
