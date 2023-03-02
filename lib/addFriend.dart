import 'package:flutter/material.dart';

import 'friendDBHelper.dart';

class AddFriend extends StatefulWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  State<AddFriend> createState() => _AddFriendState();
}

class _AddFriendState extends State<AddFriend> {
  insertdatabase(tittle, description, email, mno) {
    FriendDBHelper.instance.insert({
      FriendDBHelper.coltitle: tittle,
      FriendDBHelper.coldescription: description,
      FriendDBHelper.email: email,
      FriendDBHelper.mno: mno,
      FriendDBHelper.coldate: DateTime.now().toString(),
    });
  }

  updatedatabase(snap, index, tittle, description, email, mno) {
    FriendDBHelper.instance.update({
      FriendDBHelper.colid: snap.data![index][FriendDBHelper.colid],
      FriendDBHelper.coltitle: tittle,
      FriendDBHelper.coldescription: description,
      FriendDBHelper.email: email,
      FriendDBHelper.mno: mno,
      FriendDBHelper.coldate: DateTime.now().toString(),
    });
  }

  deletedatabase(snap, index) {
    FriendDBHelper.instance.delete(snap.data![index][FriendDBHelper.colid]);
  }

  @override
  Widget build(BuildContext context) {
    var tittle = '';
    var description = '';
    var email = '';
    var mno = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Friend'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
                onChanged: (value) {
                  tittle = value;
                },
                decoration: const InputDecoration(hintText: 'First Name')),
            TextField(
              onChanged: (value) {
                description = value;
              },
              decoration: const InputDecoration(hintText: 'Last Name'),
            ),
            TextField(
              onChanged: (value) {
                email = value;
              },
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextField(
              onChanged: (value) {
                mno = value;
              },
              decoration: const InputDecoration(hintText: 'Mobile Number'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      insertdatabase(tittle, description, email, mno);
                      Navigator.pop(context);
                    },
                    child: const Text('Save')),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
