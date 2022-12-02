import 'dart:io';

import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/model/address.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'model/profile.dart';

Future<void> main() async {
  // Initialize hive
  // WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Registering the adapter
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter<Profile>(ProfileAdapter());
  Hive.registerAdapter<Address>(AddressAdapter());

  // Opening the box

  await Hive.openBox('profile');
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
        home: InfoScreen());
  }
}
