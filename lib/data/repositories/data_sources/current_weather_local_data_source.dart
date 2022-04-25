import 'package:hive/hive.dart';
import 'package:weather/data/models/current_weather_response.dart';

abstract class CurrentWeatherLocalDataSource {
  Future<CurrentWeatherResponse?> getCurrentWeatherResponse();
  Future<void> putCurrentWeatherResponse(CurrentWeatherResponse currentWeatherResponse);
}

class CurrentWeatherLocalDataSourceImpl extends CurrentWeatherLocalDataSource {
  final String _currentWeatherResponseKey = 'CurrentWeatherResponseKey';

  Future<Box<CurrentWeatherResponse>> _getCurrentWeatherResponseBox() async {
    return await Hive.openBox<CurrentWeatherResponse>('CurrentWeatherResponse');
  }

  @override
  Future<CurrentWeatherResponse?> getCurrentWeatherResponse() async{
    Box<CurrentWeatherResponse> _campaignInfoBox = await _getCurrentWeatherResponseBox();
    CurrentWeatherResponse? myChallengesCampaignInfoModel = _campaignInfoBox.get(_currentWeatherResponseKey);
    await _campaignInfoBox.close();
    return myChallengesCampaignInfoModel;
  }

  @override
  Future<void> putCurrentWeatherResponse(
      CurrentWeatherResponse currentWeatherResponse) async {
    Box<CurrentWeatherResponse> _campaignInfoBox = await _getCurrentWeatherResponseBox();
    await _campaignInfoBox.clear();
    await _campaignInfoBox.put(_currentWeatherResponseKey, currentWeatherResponse);
    await _campaignInfoBox.close();
  }
}
