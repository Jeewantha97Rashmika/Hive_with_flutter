import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
import 'package:localdb_flutter/model/address.dart';
part 'profile.g.dart';

@HiveType(typeId: 0    )
class Profile extends HiveObject {
  @HiveField(0)
  Address address;
  @HiveField(1)
  String email;
  @HiveField(2)
  String firstName;
  @HiveField(3)
  String heading;
  @HiveField(4)
  String lastName;
  @HiveField(5)
  String phone;
  @HiveField(6)
  String photograph;
  @HiveField(7)
  String subtitle;
  @HiveField(8)
  String website;

  @override
  String toString() {
    return jsonEncode({
      'address': this.address,
      'email': this.email,
      'firstName': this.firstName,
      'heading': this.heading,
      'lastName': this.lastName,
      'phone': this.phone,
      'photograph': this.photograph,
      'subtitle': this.subtitle,
      'website': this.website,

      //'listexam': this.listexam
    });
  }

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
