import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:localdb_flutter/screens/addProfileScreen.dart';
import 'package:localdb_flutter/screens/addScreen.dart';
import 'package:localdb_flutter/screens/updateScreen.dart';

class FireAddress {
  String city;
  String countery;
  FireAddress({
    required this.city,
    required this.countery,
  });
}

class FireProfile {
  String firstName;
  String lastName;
  FireAddress address;

  FireProfile({
    required this.firstName,
    required this.lastName,
    required this.address,
  });
}

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  late final Box contactBox;

  // Delete info from people box
  _deleteInfo(int index) {
    contactBox.deleteAt(index);
    print('Item deleted from box at index: $index');
  }

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box

    contactBox = Hive.box('address');
  }

  void test() async {
    var addressBox = await Hive.openBox('address');
    var profileBox = await Hive.openBox('profile');
    print(addressBox.getAt(0).city);
    print(profileBox.getAt(0).firstName);

    FireAddress fAddress = FireAddress(
        city: addressBox.getAt(0).city, countery: addressBox.getAt(0).country);

    FireProfile fProfile = FireProfile(
        firstName: profileBox.getAt(0).firstName,
        lastName: profileBox.getAt(0).lastName,
        address: fAddress);


        
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    test();
    return Scaffold(
        appBar: AppBar(
          title: Text('People Info'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          ),
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [Text("data")],
        )

        // ValueListenableBuilder(
        //   valueListenable: contactBox.listenable(),
        //   builder: (context, Box box, widget) {
        //     if (box.isEmpty) {
        //       return const Center(
        //         child: Text('Empty'),
        //       );
        //     } else {
        //       return ListView.builder(
        //         itemCount: box.length,
        //         itemBuilder: (context, index) {
        //           var currentBox = box;
        //           var personData = currentBox.getAt(index);
        //           return InkWell(
        //             onTap: () => Navigator.of(context).push(
        //               MaterialPageRoute(
        //                 builder: (context) => UpdateScreen(
        //                   index: index,
        //                   person: personData,
        //                 ),
        //               ),
        //             ),
        //             child: ListTile(
        //               title: Text(personData.firstName),
        //               subtitle: Text(personData.city),
        //               trailing: IconButton(
        //                 onPressed: () => _deleteInfo(index),
        //                 icon: const Icon(
        //                   Icons.delete,
        //                   color: Colors.red,
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //       );
        //     }
        //   },
        // ),
        );
  }
}
