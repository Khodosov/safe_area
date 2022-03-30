// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserLocationHiveAdapter extends TypeAdapter<UserLocationHive> {
  @override
  final int typeId = 0;

  @override
  UserLocationHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserLocationHive(
      time: fields[0] as String,
      latitude: fields[1] as double,
      longitude: fields[2] as double,
    );
  }

  @override
  void write(BinaryWriter writer, UserLocationHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.time)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLocationHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
