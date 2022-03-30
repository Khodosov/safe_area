part of 'data_saver_bloc.dart';

@freezed
class DataSaverEvent with _$DataSaverEvent {
  const factory DataSaverEvent.addToHiveList({
    required UserLocationHive locationHive,
  }) = _addToHiveList;

  const factory DataSaverEvent.addToList({
    required UserLocation location,
  }) = _addToList;

  ///
  /// Save
  ///
  const factory DataSaverEvent.saveToDiscHive() = _saveToDiscHive;

  const factory DataSaverEvent.saveToDiscSQFLite() = _saveToDiscSQFLite;

  const factory DataSaverEvent.saveToDiscSharedPreferences() = _saveToDiscSharedPreferences;

  ///
  /// Read
  ///
  const factory DataSaverEvent.readFromDiscHive() = _readFromDiscHive;

  const factory DataSaverEvent.readFromDiscSQFLite() = _readFromDiscSQFLite;

  const factory DataSaverEvent.readFromDiskSharedPreferences() = _readFromDiscSharedPreferences;

  ///
  /// Update
  ///
  const factory DataSaverEvent.updateHive() = _updateHive;

  const factory DataSaverEvent.updateSQFLite() = _updateSQFLite;

  const factory DataSaverEvent.updateSharedPreferences() = _updateSharedPreferences;

  ///
  /// Generate data
  ///
  const factory DataSaverEvent.generateData() = _generateData;
}
