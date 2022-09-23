import 'package:flutter/material.dart';
import 'package:fast_contacts/fast_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contacts"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Container(
          height: double.infinity,
          child: FutureBuilder(
            future: getContacts(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: SizedBox(
                      width: 50.0,
                      height: 60.0,
                      child: CircularProgressIndicator()),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    Contact contact = snapshot.data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20.0,
                        child: Icon(Icons.person),
                      ),
                      title: Text(contact.displayName),
                      subtitle:

                      Text(contact.phones[0]),

                    );
                  });
            },
          )),
    );
  }
}

Future<List<Contact>> getContacts() async {
  bool isGranted = await Permission.contacts.isGranted;
  if (!isGranted) {
    isGranted = await Permission.contacts
        .request()
        .isGranted;
  }
  if (isGranted) {
    return await FastContacts.allContacts;
  }
  return [];
}
