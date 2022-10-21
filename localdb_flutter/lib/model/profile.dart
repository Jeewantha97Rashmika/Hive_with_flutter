import 'package:hive_flutter/adapters.dart';
import 'package:localdb_flutter/model/address.dart';
part 'profile.g.dart';

@HiveType(typeId: 2)
class Profile extends HiveObject {
  @HiveField(0)
  final String address;
  @HiveField(1)
  final String email;
  @HiveField(2)
  final String firstName;
  @HiveField(3)
  final String heading;
  @HiveField(4)
  final String lastName;
  @HiveField(5)
  final String phone;
  @HiveField(6)
  final String photograph;
  @HiveField(7)
  final String subtitle;
  @HiveField(8)
  final String website;

  Profile(
      {required this.address,
      required this.email,
      required this.firstName,
      required this.heading,
      required this.lastName,
      required this.phone,
      required this.photograph,
      required this.subtitle,
      required this.website});
}
