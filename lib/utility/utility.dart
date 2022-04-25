import 'package:intl/intl.dart';
import 'package:weather/core/sunny_provider.dart';

class Utility{
  final _dateFormatter = DateFormat('yyyy-MM-dd');
  DateTime? fromJsonToDate(String? date) =>
      date == null ? null : _dateFormatter.parse(date);
  String? toJsonFromDate(DateTime? date) =>
      date == null ? null : _dateFormatter.format(date);

  final _timeFormatter = DateFormat(DateFormat.HOUR_MINUTE);
  DateTime? fromJsonToTime(String? date) =>
      date == null ? null : _timeFormatter.parse(date);
  String? toJsonFromTime(DateTime? date) =>
      date == null ? null : _timeFormatter.format(date);

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