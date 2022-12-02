import 'package:hive/hive.dart';

part 'address.g.dart';

@HiveType(typeId: 0)
class Address {
  @HiveField(0)
  late String city;
  @HiveField(1)
  late String country;
  @HiveField(2)
  late String line1;
  @HiveField(3)
  late String line2;
  @HiveField(4)
  late String pincode;

  Address(
      {required this.city,
      required this.country,
      required this.line1,
      required this.line2,
      required this.pincode});

  // Address.fromJson(Map<String, dynamic> json) {
  //   // print('fromjson:$json');
  //   if (json != null) {
  //     city = json['city'];
  //     country = json['country'];
  //     line1 = json['line1'];
  //     line2 = json['line2'];
  //     pincode = json['pincode'];
  //   } else {
  //     print('in else profile from json');
  //     // name = '';
  //   }
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['city'] = this.city;
  //   data['country'] = this.country;
  //   data['line1'] = this.line1;
  //   data['line2'] = this.line2;
  //   data['pincode'] = this.pincode;

  //   return data;
  // }
}
