import 'package:flutter/material.dart';
import 'package:real/friendDBHelper.dart';

import 'addFriend.dart';
import 'descriptionFriends.dart';
import 'editFriend.dart';

class NoteHomeUI extends StatefulWidget {
  const NoteHomeUI({super.key});

  @override
  State<NoteHomeUI> createState() => _NoteHomeUIState();
}

class _NoteHomeUIState extends State<NoteHomeUI> {
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
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.07,
          title: const Text('Friends List')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: FutureBuilder(
            future: FriendDBHelper.instance.queryAll(),
            builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snap) {
              if (snap.hasData) {
                return ListView.builder(
                  itemCount: snap.data!.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (direction) {
                        deletedatabase(snap, index);
                      },
                      background: Container(
                          color: Colors.red, child: const Icon(Icons.delete)),
                      child: Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DescriptionNote(
                                  tittle: snap.data![index]
                                      [FriendDBHelper.coltitle],
                                  description: snap.data![index]
                                      [FriendDBHelper.coldescription],
                                  email: snap.data![index]
                                      [FriendDBHelper.email],
                                  mno: snap.data![index][FriendDBHelper.mno],
                                );
                              },
                            ));
                          },
                          leading: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditFriends(
                                        tittle: snap.data![index]
                                            [FriendDBHelper.coltitle],
                                        description: snap.data![index]
                                            [FriendDBHelper.coldescription],
                                        email: snap.data![index]
                                            [FriendDBHelper.email],
                                        mno: snap.data![index]
                                            [FriendDBHelper.mno],
                                      ),
                                    ));
                                // builder: (context) {
                                //   return editFriend(
                                //     tittle: snap.data![index]
                                //         [FriendDBHelper.coltitle],
                                //     description: snap.data![index]
                                //         [FriendDBHelper.coldescription],
                                //     email: snap.data![index]
                                //         [FriendDBHelper.email],
                                //     mno: snap.data![index]
                                //         [FriendDBHelper.mno],
                                //   );
                                // },
                                // ),
                                // );
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => editFriends(
                                //           description: '',
                                //           email: '',
                                //           mno: '',
                                //           tittle: '')),
                                // );

                                // dialog starts here

                                // showDialog(
                                //   context: context,
                                //   builder: (context) {
                                //     var tittle = snap.data![index]
                                //         [FriendDBHelper.coltitle];
                                //     var description = snap.data![index]
                                //         [FriendDBHelper.coldescription];
                                //     var email =
                                //         snap.data![index][FriendDBHelper.email];
                                //     var mno =
                                //         snap.data![index][FriendDBHelper.mno];
                                //     return AlertDialog(
                                //       title: const Text('Edit Friend'),
                                //       content: Column(
                                //         mainAxisSize: MainAxisSize.min,
                                //         children: [
                                //           TextField(
                                //             controller: TextEditingController(
                                //               text: tittle,
                                //             ),
                                //             onChanged: (value) {
                                //               tittle = value;
                                //             },
                                //             decoration: InputDecoration(
                                //               hintText: snap.data![index]
                                //                   [FriendDBHelper.coltitle],
                                //             ),
                                //           ),
                                //           TextField(
                                //             controller: TextEditingController(
                                //               text: snap.data![index][
                                //                   FriendDBHelper
                                //                       .coldescription],
                                //             ),
                                //             onChanged: (value) {
                                //               description = value;
                                //             },
                                //             decoration: InputDecoration(
                                //               hintText: snap.data![index][
                                //                   FriendDBHelper
                                //                       .coldescription],
                                //             ),
                                //           ),
                                //           TextField(
                                //             controller: TextEditingController(
                                //               text: snap.data![index]
                                //                   [FriendDBHelper.email],
                                //             ),
                                //             onChanged: (value) {
                                //               email = value;
                                //             },
                                //             decoration: InputDecoration(
                                //               hintText: snap.data![index]
                                //                   [FriendDBHelper.email],
                                //             ),
                                //           ),
                                //           TextField(
                                //             controller: TextEditingController(
                                //               text: snap.data![index]
                                //                   [FriendDBHelper.mno],
                                //             ),
                                //             onChanged: (value) {
                                //               mno = value;
                                //             },
                                //             decoration: InputDecoration(
                                //               hintText: snap.data![index]
                                //                   [FriendDBHelper.mno],
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //       actions: [
                                //         TextButton(
                                //             onPressed: () {
                                //               Navigator.pop(context);
                                //             },
                                //             child: const Text('Cancel')),
                                //         TextButton(
                                //             onPressed: () {
                                //               updatedatabase(
                                //                   snap,
                                //                   index,
                                //                   tittle,
                                //                   description,
                                //                   email,
                                //                   mno);
                                //               Navigator.pop(context);
                                //             },
                                //             child: const Text('Save'))
                                //       ],
                                //     );
                                //   },
                                // );
                              },
                              icon: const Icon(Icons.edit)),
                          title:
                              Text(snap.data![index][FriendDBHelper.coltitle]),
                          subtitle: Text(
                              snap.data![index][FriendDBHelper.coldescription]),
                          trailing: Text(
                            snap.data![index][FriendDBHelper.coldate]
                                .toString()
                                .substring(0, 10),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          // onPressed: () {
          //   //navigate to other page
          //   Navigator.push(context, MaterialPageRoute(
          //     builder: (context) {
          //       return AddFriend();
          //     },
          //   ));
          // },
          // Within the `FirstRoute` widget
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddFriend()),
            );
          }
          // child: Icon(Icons.add),
          ),
    );
  }
}
