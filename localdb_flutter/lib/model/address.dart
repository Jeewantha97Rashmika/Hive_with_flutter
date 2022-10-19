import 'package:hive/hive.dart';
part 'address.g.dart';

@HiveType(typeId: 3)
class Address {
  @HiveField(0)
  final String city;
  @HiveField(1)
  final String country;
  @HiveField(2)
  final String line1;
  @HiveField(3)
  final String line2;
  @HiveField(4)
  final String pincode;

  Address(
      {required this.city,
      required this.country,
      required this.line1,
      required this.line2,
      required this.pincode});
}
