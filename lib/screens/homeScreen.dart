import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/components/addAddressForm.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';

import '../model/people.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final Box box;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // dataBox = Hive.box<DataModel>(dataBoxName);
    box = Hive.box('peopleBox');
  }

  @override
  void dispose() {
    // Closes all Hive boxes
    Hive.close();
    super.dispose();
  }

  // _addInfo() async {
  //   // Add info to people box
  //   box.put('name', 'John');
  //   box.put('country', 'Italy');
  //   print('Info added to box!');
  // }

  // _getInfo() {
  //   // Get info from people box
  //   var name = box.get('name');
  //   var country = box.get('country');
  //   print('Info retrieved from box: $name ($country)');
  // }

  _updateInfo() {
    // Update info of people box
    box.put('name', 'Mike');
    box.put('country', 'United States');
    print('Info updated in box!');
  }

  _deleteInfo() {
    // Delete info from people box
    box.delete('name');
    box.delete('country');
    print('Info deleted from box!');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('People Info'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const addAddressForm()),
                );
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed:(){
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  InfoScreen()),
                );
              },
              child: Text('Get'),
            ),
            ElevatedButton(
              onPressed: _updateInfo,
              child: Text('Update'),
            ),
            ElevatedButton(
              onPressed: _deleteInfo,
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
