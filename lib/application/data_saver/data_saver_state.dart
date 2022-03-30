part of 'data_saver_bloc.dart';

@freezed
class DataSaverState with _$DataSaverState {
  const factory DataSaverState({
    required List<UserLocation> locationList,
    required List<UserLocationHive> locationHiveList,
  }) = _DataSaverState;

  factory DataSaverState.initial() {
    return const DataSaverState(
      locationHiveList: [],
      locationList: [],
    );
  }
}
