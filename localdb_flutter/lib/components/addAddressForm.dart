import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/model/address.dart';
import 'package:localdb_flutter/model/people.dart';
import 'package:localdb_flutter/model/person.dart';
import 'package:localdb_flutter/model/profile.dart';
import 'package:localdb_flutter/screens/addProfileScreen.dart';

class addAddressForm extends StatefulWidget {
  const addAddressForm({Key? key}) : super(key: key);
  @override
  _addAddressFormState createState() => _addAddressFormState();
}

class _addAddressFormState extends State<addAddressForm> {
  late final Box box;

  final _cityController = TextEditingController();
  final _countryController = TextEditingController();
  final _line1Controller = TextEditingController();
  final _line2Controller = TextEditingController();
  final _pincodeController = TextEditingController();

  final _personFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('address');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('city'),
            TextFormField(
              controller: _cityController,
              // validator: _fieldValidator,
            ),
            SizedBox(height: 24.0),
            Text(' Country'),
            TextFormField(
              controller: _countryController,
              // validator: _fieldValidator,
            ),
            SizedBox(height: 24.0),
            Text('line1'),
            TextFormField(
              controller: _line1Controller,
              // validator: _fieldValidator,
            ),
            SizedBox(height: 24.0),
            Text('line2'),
            TextFormField(
              controller: _line2Controller,
              // validator: _fieldValidator,
            ),
            SizedBox(height: 24.0),
            Text('pincode'),
            TextFormField(
              controller: _pincodeController,
              // validator: _fieldValidator,
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 24.0),
              child: Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    _addInfo();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddProfileScreen()),
                    );
                  },
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      
    );
  }

  _addInfo() async {
    Address newAddress = Address(
      city: _cityController.text,
      country: _countryController.text,
      line1: _line1Controller.text,
      line2: _line2Controller.text,
      pincode: _pincodeController.text,
    );
    box.add(newAddress);
print("Data added");
   
  }

  // String _fieldValidator(String value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Field can\'t be empty';
  //   }
  //   return null;
  // }
}
