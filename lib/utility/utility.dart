import 'package:intl/intl.dart';
import 'package:weather/core/sunny_provider.dart';

class Utility{

  static String timeStampToDate(timeStamp) {
    return DateFormat('MM/dd/yyyy').format(DateTime.fromMillisecondsSinceEpoch(timeStamp*1000));
  }

  static String timeStampToTime(timeStamp) {
    return DateFormat('hh:mm a').format(DateTime.fromMillisecondsSinceEpoch(timeStamp*1000));
  }

  static void startLoadingAnimation() {
    SunnyProvider.loadingCubit.startLoading();
  }

  static void completeLoadingAnimation() {
    SunnyProvider.loadingCubit.resetLoading();
  }

  static void showLoadingFailedError(String errorMessage) {
    SunnyProvider.loadingCubit.loadingFailed(errorMessage);
  }

}