import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class DescriptionNote extends StatefulWidget {
  var tittle;
  var description;
  var email;
  var mno;

  DescriptionNote({
    required this.tittle,
    required this.description,
    required this.email,
    required this.mno,
  });

  @override
  State<DescriptionNote> createState() => _DescriptionNoteState();
}

class _DescriptionNoteState extends State<DescriptionNote> {
  _makingPhoneCall() async {
    var url = Uri.parse("tel: ${widget.mno}");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _makingMail() async {
    var url = Uri.parse("mailto: ${widget.email}");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note Description'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 1.0),
                    child: Card(
                      color: Colors.blue[100],
                      child: Column(
                        children: [
                          GestureDetector(
                            onLongPress: () async {
                              await Share.share(
                                  "Name: ${widget.tittle}\n\n Mobile Number: ${widget.mno}");
                            },
                            child: Text(
                              "First Name: " + widget.tittle,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Last Name: " + widget.description,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onLongPress: () async {
                              await Share.share(
                                  "Email Address: ${widget.email}");
                            },
                            onTap: () {
                              _makingMail();
                            },
                            child: Text(
                              "Email ID: " + widget.email,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onLongPress: () async {
                              await Share.share("Mobile Number: ${widget.mno}");
                            },
                            onTap: () {
                              _makingPhoneCall();
                            },
                            child: Text(
                              "Mobile Number: " + widget.mno,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                  // Card(
                  //   child: ListTile(
                  //     title: Text(widget.tittle),
                  //     subtitle: Text(widget.description),
                  // ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
