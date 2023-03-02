// // import 'package:flutter/material.dart';

// // import 'descriptionFriends.dart';
// // import 'friendDBHelper.dart';

// // class editFriend extends StatefulWidget {
// //   editFriend({Key? key}) : super(key: key);

// //   @override
// //   State<editFriend> createState() => _editFriendState();
// // }

// // class _editFriendState extends State<editFriend> {
// //   insertdatabase(tittle, description, email, mno) {
// //     FriendDBHelper.instance.insert({
// //       FriendDBHelper.coltitle: tittle,
// //       FriendDBHelper.coldescription: description,
// //       FriendDBHelper.email: email,
// //       FriendDBHelper.mno: mno,
// //       FriendDBHelper.coldate: DateTime.now().toString(),
// //     });
// //   }

// //   updatedatabase(snap, index, tittle, description, email, mno) {
// //     FriendDBHelper.instance.update({
// //       FriendDBHelper.colid: snap.data![index][FriendDBHelper.colid],
// //       FriendDBHelper.coltitle: tittle,
// //       FriendDBHelper.coldescription: description,
// //       FriendDBHelper.email: email,
// //       FriendDBHelper.mno: mno,
// //       FriendDBHelper.coldate: DateTime.now().toString(),
// //     });
// //   }

// //   deletedatabase(snap, index) {
// //     FriendDBHelper.instance.delete(snap.data![index][FriendDBHelper.colid]);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     var tittle = '';
// //     var description = '';
// //     var email = '';
// //     var mno = '';
// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Text('Add Friend'),
// //         ),
// //         body: Container(
// //           child: ElevatedButton(
// //             onPressed: () {
// //               showDialog(
// //                 context: context,
// //                 builder: (context) {
// //                   // var tittle = '';
// //                   // var description = '';
// //                   // var email = '';
// //                   // var mno = '';

// //                   var tittle = snap.data![index][FriendDBHelper.coltitle];
// //                   var description =
// //                       snap.data![index][FriendDBHelper.coldescription];
// //                   var email = snap.data![index][FriendDBHelper.email];
// //                   var mno = snap.data![index][FriendDBHelper.mno];
// //                   return AlertDialog(
// //                     title: const Text('Edit Friend'),
// //                     content: Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         TextField(
// //                           controller: TextEditingController(
// //                             text: snap.data![index][FriendDBHelper.coltitle],
// //                           ),
// //                           onChanged: (value) {
// //                             tittle = value;
// //                           },
// //                           decoration: InputDecoration(
// //                             hintText: snap.data![index]
// //                                 [FriendDBHelper.coltitle],
// //                           ),
// //                         ),
// //                         TextField(
// //                           controller: TextEditingController(
// //                             text: snap.data![index]
// //                                 [FriendDBHelper.coldescription],
// //                           ),
// //                           onChanged: (value) {
// //                             description = value;
// //                           },
// //                           decoration: InputDecoration(
// //                             hintText: snap.data![index]
// //                                 [FriendDBHelper.coldescription],
// //                           ),
// //                         ),
// //                         TextField(
// //                           controller: TextEditingController(
// //                             text: snap.data![index][FriendDBHelper.email],
// //                           ),
// //                           onChanged: (value) {
// //                             email = value;
// //                           },
// //                           decoration: InputDecoration(
// //                             hintText: snap.data![index][FriendDBHelper.email],
// //                           ),
// //                         ),
// //                         TextField(
// //                           controller: TextEditingController(
// //                             text: snap.data![index][FriendDBHelper.mno],
// //                           ),
// //                           onChanged: (value) {
// //                             mno = value;
// //                           },
// //                           decoration: InputDecoration(
// //                             hintText: snap.data![index][FriendDBHelper.mno],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     actions: [
// //                       TextButton(
// //                           onPressed: () {
// //                             Navigator.pop(context);
// //                           },
// //                           child: const Text('Cancel')),
// //                       TextButton(
// //                           onPressed: () {
// //                             updatedatabase(
// //                                 snap, index, tittle, description, email, mno);
// //                             Navigator.pop(context);
// //                           },
// //                           child: const Text('Save'))
// //                     ],
// //                   );
// //                 },
// //               );
// //             },
// //             child: const Text('Add'),
// //           ),
// //         ));
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:real/friendDBHelper.dart';

// class editFriend extends StatefulWidget {
//   const editFriend({super.key});

//   @override
//   State<editFriend> createState() => _editFriendState();
// }

// class _editFriendState extends State<editFriend> {
//   insertdatabase(tittle, description, email, mno) {
//     FriendDBHelper.instance.insert({
//       FriendDBHelper.coltitle: tittle,
//       FriendDBHelper.coldescription: description,
//       FriendDBHelper.email: email,
//       FriendDBHelper.mno: mno,
//       FriendDBHelper.coldate: DateTime.now().toString(),
//     });
//   }

//   updatedatabase(snap, index, tittle, description, email, mno) {
//     FriendDBHelper.instance.update({
//       FriendDBHelper.colid: snap.data![index][FriendDBHelper.colid],
//       FriendDBHelper.coltitle: tittle,
//       FriendDBHelper.coldescription: description,
//       FriendDBHelper.email: email,
//       FriendDBHelper.mno: mno,
//       FriendDBHelper.coldate: DateTime.now().toString(),
//     });
//   }

//   deletedatabase(snap, index) {
//     FriendDBHelper.instance.delete(snap.data![index][FriendDBHelper.colid]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var tittle = '';
//     var description = '';
//     var email = '';
//     var mno = '';
//     return Scaffold(
//       appBar: AppBar(
//           toolbarHeight: MediaQuery.of(context).size.height * 0.07,
//           title: const Text('Friends List')),
//       body: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Container(
//           height: MediaQuery.of(context).size.height * 0.8,
//           child: FutureBuilder(
//             future: FriendDBHelper.instance.queryAll(),
//             builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snap) {
//               if (snap.hasData) {
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     TextField(
//                       controller: TextEditingController(
//                         text: snap.data![index][FriendDBHelper.coltitle],
//                         // snap.data![0][FriendDBHelper.coltitle],
//                       ),
//                       onChanged: (value) {
//                         tittle = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: snap.data![index][FriendDBHelper.coltitle],
//                       ),
//                     ),
//                     TextField(
//                       controller: TextEditingController(
//                         text: snap.data![index][FriendDBHelper.coldescription],
//                       ),
//                       onChanged: (value) {
//                         description = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: snap.data![index]
//                             [FriendDBHelper.coldescription],
//                       ),
//                     ),
//                     TextField(
//                       controller: TextEditingController(
//                         text: snap.data![index][FriendDBHelper.email],
//                       ),
//                       onChanged: (value) {
//                         email = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: snap.data![index][FriendDBHelper.email],
//                       ),
//                     ),
//                     TextField(
//                       controller: TextEditingController(
//                         text: snap.data![index][FriendDBHelper.mno],
//                       ),
//                       onChanged: (value) {
//                         mno = value;
//                       },
//                       decoration: InputDecoration(
//                         hintText: snap.data![index][FriendDBHelper.mno],
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         TextButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: const Text('Cancel')),
//                         TextButton(
//                             onPressed: () {
//                               updatedatabase(
//                                   snap, index, tittle, description, email, mno);
//                               Navigator.pop(context);
//                             },
//                             child: const Text('Save'))
//                       ],
//                     )
//                   ],
//                 );
//               }
//               return const Center(child: CircularProgressIndicator());
//             },
//           ),
//         ),
//       ),
//     );
//   }
//   // ElevatedButton(
//   // onPressed: () {
//   //   showDialog(
//   //     context: context,
//   //     builder: (context) {
//   // var tittle = '';
//   // var description = '';
//   // var email = '';
//   // var mno = '';

//   // var tittle =
//   //     snap.data![index][FriendDBHelper.coltitle];
//   // var description = snap.data![index]
//   //     [FriendDBHelper.coldescription];
//   // var email = snap.data![index][FriendDBHelper.email];
//   // var mno = snap.data![index][FriendDBHelper.mno];
//   // return AlertDialog(
//   //   title: const Text('Edit Friend'),
//   // content: Column(
//   //   mainAxisSize: MainAxisSize.min,
//   //   children: [
//   //     TextField(
//   //       controller: TextEditingController(
//   //         text: snap.data![index]
//   //             [FriendDBHelper.coltitle],
//   //       ),
//   //       onChanged: (value) {
//   //         tittle = value;
//   //       },
//   //       decoration: InputDecoration(
//   //         hintText: snap.data![index]
//   //             [FriendDBHelper.coltitle],
//   //       ),
//   //     ),
//   //     TextField(
//   //       controller: TextEditingController(
//   //         text: snap.data![index]
//   //             [FriendDBHelper.coldescription],
//   //       ),
//   //       onChanged: (value) {
//   //         description = value;
//   //       },
//   //       decoration: InputDecoration(
//   //         hintText: snap.data![index]
//   //             [FriendDBHelper.coldescription],
//   //       ),
//   //     ),
//   //     TextField(
//   //       controller: TextEditingController(
//   //         text: snap.data![index]
//   //             [FriendDBHelper.email],
//   //       ),
//   //       onChanged: (value) {
//   //         email = value;
//   //       },
//   //       decoration: InputDecoration(
//   //         hintText: snap.data![index]
//   //             [FriendDBHelper.email],
//   //       ),
//   //     ),
//   //     TextField(
//   //       controller: TextEditingController(
//   //         text: snap.data![index]
//   //             [FriendDBHelper.mno],
//   //       ),
//   //       onChanged: (value) {
//   //         mno = value;
//   //       },
//   //       decoration: InputDecoration(
//   //         hintText: snap.data![index]
//   //             [FriendDBHelper.mno],
//   //       ),
//   //     ),
//   //   ],
//   // ),
//   // actions: [
//   // TextButton(
//   //     onPressed: () {
//   //       Navigator.pop(context);
//   //     },
//   //     child: const Text('Cancel')),
//   // TextButton(
//   //     onPressed: () {
//   //       updatedatabase(snap, index, tittle,
//   //           description, email, mno);
//   //       Navigator.pop(context);
//   //     },
//   //     child: const Text('Save'))
//   //                         ],
//   //                       );
//   //                     },
//   //                   );
//   //                 },
//   //                 child: const Text('Add'),
//   //               );
//   //             },
//   //           );
//   //         } else {
//   //           return Center(
//   //             child: CircularProgressIndicator(),
//   //           );
//   //         }
//   //       },
//   //     ),
//   //   ),
//   // ),
//   // floatingActionButton: FloatingActionButton(
//   //     child: Icon(Icons.add),
//   // onPressed: () {
//   //   //navigate to other page
//   //   Navigator.push(context, MaterialPageRoute(
//   //     builder: (context) {
//   //       return AddFriend();
//   //     },
//   //   ));
//   // },
//   // Within the `FirstRoute` widget
// //           onPressed: () {
// //             Navigator.push(
// //               context,
// //               MaterialPageRoute(builder: (context) => AddFriend()),
// //             );
// //           }
// //           // child: Icon(Icons.add),
// //           ),
// //     );
// //   }
// // }
// }

// import 'package:flutter/material.dart';

// class editFriends extends StatefulWidget {
//   editFriends(
//       {Key? key,
//       required tittle,
//       required description,
//       required email,
//       required mno})
//       : super(key: key);

//   @override
//   State<editFriends> createState() => _editFriendsState();
// }

// class _editFriendsState extends State<editFriends> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Friends'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             TextField(
//               controller: TextEditingController(
//                 text: widget.title,
//               ),
//               decoration: const InputDecoration(
//                 hintText: 'Enter your name',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:share_plus/share_plus.dart';

// import 'descriptionFriends.dart';
// import 'friendDBHelper.dart';

// class editFriends extends StatefulWidget {
//   var tittle;
//   var description;
//   var email;
//   var mno;

//   editFriends({
//     required this.tittle,
//     required this.description,
//     required this.email,
//     required this.mno,
//   });

//   @override
//   State<editFriends> createState() => editFriendsState();
// }

// class editFriendsState extends State<editFriends> {
//   insertdatabase(tittle, description, email, mno) {
//     FriendDBHelper.instance.insert({
//       FriendDBHelper.coltitle: tittle,
//       FriendDBHelper.coldescription: description,
//       FriendDBHelper.email: email,
//       FriendDBHelper.mno: mno,
//       FriendDBHelper.coldate: DateTime.now().toString(),
//     });
//   }

//   updatedatabase(snap, index, tittle, description, email, mno) {
//     FriendDBHelper.instance.update({
//       FriendDBHelper.colid: snap.data![index][FriendDBHelper.colid],
//       FriendDBHelper.coltitle: tittle,
//       FriendDBHelper.coldescription: description,
//       FriendDBHelper.email: email,
//       FriendDBHelper.mno: mno,
//       FriendDBHelper.coldate: DateTime.now().toString(),
//     });
//   }

//   deletedatabase(snap, index) {
//     FriendDBHelper.instance.delete(snap.data![index][FriendDBHelper.colid]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit friends'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: FutureBuilder(
//           future: FriendDBHelper.instance.queryAll(),
//           builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snap) {
//             if (snap.hasData) {
//               return ListView.builder(
//                 itemCount: snap.data!.length,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     child: ListTile(
//                       onTap: () {
//                         // Navigator.push(context, MaterialPageRoute(
//                         //   builder: (context) {
//                         //     return DescriptionNote(
//                         //       tittle: snap.data![index]
//                         //           [FriendDBHelper.coltitle],
//                         //       description: snap.data![index]
//                         //           [FriendDBHelper.coldescription],
//                         //       email: snap.data![index][FriendDBHelper.email],
//                         //       mno: snap.data![index][FriendDBHelper.mno],
//                         //     );
//                         //   },
//                         // ));
//                       },
//                       leading: IconButton(
//                           onPressed: () {
//                             showDialog(
//                               context: context,
//                               builder: (context) {
//                                 var tittle =
//                                     snap.data![index][FriendDBHelper.coltitle];
//                                 var description = snap.data![index]
//                                     [FriendDBHelper.coldescription];
//                                 var email =
//                                     snap.data![index][FriendDBHelper.email];
//                                 var mno = snap.data![index][FriendDBHelper.mno];
//                                 return AlertDialog(
//                                   title: const Text('Edit Friend'),
//                                   content: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       TextField(
//                                         controller: TextEditingController(
//                                           text: snap.data![index]
//                                               [FriendDBHelper.coltitle],
//                                         ),
//                                         onChanged: (value) {
//                                           tittle = value;
//                                         },
//                                         decoration: InputDecoration(
//                                           hintText: snap.data![index]
//                                               [FriendDBHelper.coltitle],
//                                         ),
//                                       ),
//                                       TextField(
//                                         controller: TextEditingController(
//                                           text: snap.data![index]
//                                               [FriendDBHelper.coldescription],
//                                         ),
//                                         onChanged: (value) {
//                                           description = value;
//                                         },
//                                         decoration: InputDecoration(
//                                           hintText: snap.data![index]
//                                               [FriendDBHelper.coldescription],
//                                         ),
//                                       ),
//                                       TextField(
//                                         controller: TextEditingController(
//                                           text: snap.data![index]
//                                               [FriendDBHelper.email],
//                                         ),
//                                         onChanged: (value) {
//                                           email = value;
//                                         },
//                                         decoration: InputDecoration(
//                                           hintText: snap.data![index]
//                                               [FriendDBHelper.email],
//                                         ),
//                                       ),
//                                       TextField(
//                                         controller: TextEditingController(
//                                           text: snap.data![index]
//                                               [FriendDBHelper.mno],
//                                         ),
//                                         onChanged: (value) {
//                                           mno = value;
//                                         },
//                                         decoration: InputDecoration(
//                                           hintText: snap.data![index]
//                                               [FriendDBHelper.mno],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   actions: [
//                                     TextButton(
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                         child: const Text('Cancel')),
//                                     TextButton(
//                                         onPressed: () {
//                                           updatedatabase(snap, index, tittle,
//                                               description, email, mno);
//                                           Navigator.pop(context);
//                                         },
//                                         child: const Text('Save'))
//                                   ],
//                                 );
//                               },
//                             );
//                           },
//                           icon: const Icon(Icons.edit)),
//                       title: Text(snap.data![index][FriendDBHelper.coltitle]),
//                       subtitle: Text(
//                           snap.data![index][FriendDBHelper.coldescription]),
//                       trailing: Text(
//                         snap.data![index][FriendDBHelper.coldate]
//                             .toString()
//                             .substring(0, 10),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'friendDBHelper.dart';

class EditFriends extends StatefulWidget {
  String tittle = '';
  String description = '';
  String email = '';
  String mno = '';
  EditFriends(
      {Key? key,
      required this.tittle,
      required this.description,
      required this.email,
      required this.mno})
      : super(key: key);

  @override
  State<EditFriends> createState() => _EditFriendsState();
}

class _EditFriendsState extends State<EditFriends> {
  updatedatabase(tittle, description, email, mno) {
    FriendDBHelper.instance.update({
      FriendDBHelper.colid: [FriendDBHelper.colid],
      FriendDBHelper.coltitle: tittle,
      FriendDBHelper.coldescription: description,
      FriendDBHelper.email: email,
      FriendDBHelper.mno: mno,
      FriendDBHelper.coldate: DateTime.now().toString(),
    });
  }

  String tittle = '';
  String description = '';
  String email = '';
  String mno = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Text(widget.tittle),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    // var tittle = snap.data![index][FriendDBHelper.coltitle];
                    // var description =
                    //     snap.data![index][FriendDBHelper.coldescription];
                    // var email = snap.data![index][FriendDBHelper.email];
                    // var mno = snap.data![index][FriendDBHelper.mno];
                    return AlertDialog(
                      title: const Text('Edit Friend'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            controller: TextEditingController(
                              text: tittle,
                            ),
                            onChanged: (value) {
                              tittle = value;
                            },
                            decoration: const InputDecoration(
                                hintText: FriendDBHelper.coltitle
                                // snap.data![index]
                                //     [FriendDBHelper.coltitle],
                                ),
                          ),
                          TextField(
                            controller: TextEditingController(
                                text: FriendDBHelper.coldescription
                                // snap.data![index]
                                //     [FriendDBHelper.coldescription],
                                ),
                            onChanged: (value) {
                              description = value;
                            },
                            decoration: const InputDecoration(
                                hintText: FriendDBHelper.coldescription
                                // snap.data![index]
                                //     [FriendDBHelper.coldescription],
                                ),
                          ),
                          TextField(
                            controller:
                                TextEditingController(text: FriendDBHelper.email
                                    // snap.data![index][FriendDBHelper.email],
                                    ),
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: const InputDecoration(
                                hintText: FriendDBHelper.email
                                // snap.data![index]
                                //     [FriendDBHelper.email],
                                ),
                          ),
                          TextField(
                            controller:
                                TextEditingController(text: FriendDBHelper.mno
                                    // snap.data![index][FriendDBHelper.mno],
                                    ),
                            onChanged: (value) {
                              mno = value;
                            },
                            decoration: const InputDecoration(
                                hintText: FriendDBHelper.mno
                                // snap.data![index][FriendDBHelper.mno],
                                ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel')),
                        TextButton(
                            onPressed: () {
                              updatedatabase(tittle, description, email, mno);
                              Navigator.pop(context);
                            },
                            child: const Text('Save'))
                      ],
                    );
                  },
                );
              },
              child: const Text('Edit'),
            )
          ],
        ),
      ),
    );
  }
}

// class editFriends extends StatefulWidget {
//   final int id;

//   editFriends({Key key, required this.}) : super(key: key);

//   @override
//   _editFriendsState createState() => _editFriendsState();
// }

// class _editFriendsState extends State<editFriends> {
//   final _formKey = GlobalKey<FormState>();

//   late String _data;

//   @override
//   void initState() {
//     super.initState();
//     _getData();
//   }

//   _getData() async {
//     Map<String, dynamic> row = await FriendDBHelper.instance.query(widget.id);
//     setState(() {
//       _data = row[FriendDBHelper.columnData];
//     });
//   }

//   _updateData() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       Map<String, dynamic> row = {
//         FriendDBHelper.columnId: widget.id,
//         FriendDBHelper.columnData: _data,
//       };
//       await FriendDBHelper.instance.update(row);
//       Navigator.pop(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Update Data'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 initialValue: _data,
//                 decoration: InputDecoration(labelText: 'Data'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter some data';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) => _data = value,
//               ),
//               RaisedButton(
//                 onPressed: _updateData,
//                 child: Text('Update'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
