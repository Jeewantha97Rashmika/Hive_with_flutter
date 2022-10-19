import 'package:flutter/material.dart';
import 'package:localdb_flutter/components/addData.dart';
import 'package:localdb_flutter/model/people.dart';
import 'package:localdb_flutter/screens/homeScreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';
import 'package:path_provider/path_provider.dart';

import 'model/address.dart';
import 'model/profile.dart';

Future<void> main() async {
  // Initialize hive
  await Hive.initFlutter();
  // Registering the adapter
 
  Hive.registerAdapter(AddressAdapter());
  
  // Opening the box
  await Hive.openBox('address');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfoScreen()
    );
  }
}
