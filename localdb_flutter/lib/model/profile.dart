import 'dart:convert';

import 'package:hive_flutter/adapters.dart';
import 'package:localdb_flutter/model/address.dart';
part 'profile.g.dart';

@HiveType(typeId: 0    )
class Profile extends HiveObject {
  @HiveField(0)
  String email;
  @HiveField(1)
  String firstName;
  @HiveField(2)
  String heading;
  @HiveField(3)
  String lastName;
  @HiveField(4)
  String phone;
  @HiveField(5)
  String photograph;
  @HiveField(6)
  String subtitle;
  @HiveField(7)
  String website;

  // @override
  // String toString() {
  //   return jsonEncode({
     
  //     'email': this.email,
  //     'firstName': this.firstName,
  //     'heading': this.heading,
  //     'lastName': this.lastName,
  //     'phone': this.phone,
  //     'photograph': this.photograph,
  //     'subtitle': this.subtitle,
  //     'website': this.website,

  //     //'listexam': this.listexam
  //   });
  // }

  Profile(
      {
      required this.email,
      required this.firstName,
      required this.heading,
      required this.lastName,
      required this.phone,
      required this.photograph,
      required this.subtitle,
      required this.website});
}
