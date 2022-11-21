import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/model/address.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';

import 'model/profile.dart';

Future<void> main() async {
  // Initialize hive
  // WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Registering the adapter

  Hive.registerAdapter<Profile>(ProfileAdapter());

  // Opening the box

  await Hive.openBox('profile');
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
        home: InfoScreen());
  }
}
