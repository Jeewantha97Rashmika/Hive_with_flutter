import 'dart:convert';

import 'package:hive/hive.dart';


class Address {

  late String city;

  late String country;

  late String line1;

  late String line2;

  late String pincode;

  Address(
      {required this.city,
      required this.country,
      required this.line1,
      required this.line2,
      required this.pincode});

  Address.fromJson(Map<String, dynamic> json) {
    // print('fromjson:$json');
    if (json != null) {
      city = json['city'];
      country = json['country'];
      line1 = json['line1'];
      line2 = json['line2'];
      pincode = json['pincode'];
    } else {
      print('in else profile from json');
      // name = '';
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['country'] = this.country;
    data['line1'] = this.line1;
    data['line2'] = this.line2;
    data['pincode'] = this.pincode;

    return data;
  }
}
