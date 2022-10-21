import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/components/addProfile.dart';

import '../components/addAddressForm.dart';


class AddProfileScreen extends StatefulWidget {
  @override
  _AddProfileScreenState createState() => _AddProfileScreenState();
}

class _AddProfileScreenState extends State<AddProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Profile"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: AddProfileForm(),
      ),
      
    );
  }
}
