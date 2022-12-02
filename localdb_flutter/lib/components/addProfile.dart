import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localdb_flutter/model/address.dart';
import 'package:localdb_flutter/model/people.dart';
import 'package:localdb_flutter/model/person.dart';
import 'package:localdb_flutter/model/profile.dart';
import 'package:localdb_flutter/screens/infoScreen.dart';

class AddProfileForm extends StatefulWidget {
  const AddProfileForm({
    Key? key,
  }) : super(key: key);

  @override
  _AddProfileFormState createState() => _AddProfileFormState();
}

class _AddProfileFormState extends State<AddProfileForm> {
  late final Box box;

  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _headingController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNameController = TextEditingController();
  final _photographController = TextEditingController();
  final _subtitleController = TextEditingController();
  final _websiteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('profile');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' email'),
        TextFormField(
          controller: _emailController,
          // validator: _fieldValidator,
        ),
        Text('firstName'),
        TextFormField(
          controller: _firstNameController,
          // validator: _fieldValidator,
        ),
        SizedBox(height: 24.0),
        Text('heading'),
        TextFormField(
          controller: _headingController,
          validator: _fieldValidator,
        ),
        SizedBox(height: 24.0),
        Text('lastName'),
        TextFormField(
          controller: _lastNameController,
          validator: _fieldValidator,
        ),
        // SizedBox(height: 24.0),
        // Text(' phone'),
        // TextFormField(
        //   controller: _phoneNameController,
        //   validator: _fieldValidator,
        // ),
        // Text('photograph'),
        // TextFormField(
        //   controller: _photographController,
        //   validator: _fieldValidator,
        // ),
        // SizedBox(height: 24.0),
        // Text('subtitle'),
        // TextFormField(
        //   controller: _subtitleController,
        //   validator: _fieldValidator,
        // ),
        // SizedBox(height: 24.0),
        // Text('website'),
        // TextFormField(
        //   controller: _websiteController,
        //   validator: _fieldValidator,
        // ),
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
                  MaterialPageRoute(builder: (context) => InfoScreen()),
                );
              },
              child: Text('Next'),
            ),
          ),
        ),
      ],
    );
  }

  _addInfo() async {
    Profile newProfile = Profile(
        email: _emailController.text,
        firstName: _firstNameController.text,
        heading: _headingController.text,
        lastName: _lastNameController.text,
        phone: _phoneNameController.text,
        photograph: _photographController.text,
        subtitle: _subtitleController.text,
        website: _websiteController.text);

    box.add(newProfile);
  }

  String? _fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field can\'t be empty';
    }
    return null;
  }
}
