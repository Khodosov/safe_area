import 'package:hive/hive.dart';

part 'user_location_hive.g.dart';

@HiveType(typeId: 0)
class UserLocationHive {
  @HiveField(0)
  final String time;
  @HiveField(1)
  final double latitude;
  @HiveField(2)
  final double longitude;

  UserLocationHive({
    required this.time,
    required this.latitude,
    required this.longitude,
  });
}
