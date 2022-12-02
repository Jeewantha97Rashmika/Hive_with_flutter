import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/model/address.dart';
import 'package:localdb_flutter/model/people.dart';
import 'package:localdb_flutter/model/person.dart';
import 'package:localdb_flutter/model/profile.dart';
import 'package:localdb_flutter/screens/addProfileScreen.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  late final Box box;

  final _cityController = TextEditingController();

  final _personFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('newProfile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('city'),
            TextFormField(
              controller: _cityController,
            ),
            SizedBox(height: 24.0),
            SizedBox(height: 24.0),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 24.0),
              child: Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                 
                      // _addInfo();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoScreen()),
                      );
                  
                  },
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // _addInfo() async {
  //   People newAddress = People(
  //     name: _cityController.text,
  //   );
  //   box.add(newAddress);
  // }
}
