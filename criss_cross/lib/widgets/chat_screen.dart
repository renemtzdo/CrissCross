import 'package:flutter/material.dart';
import 'package:profile/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MessageBubble> messageWidgets = [];
  late MessageBubble messageWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
              }),
        ],
        title: const Text('⚡️Chat'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          CupertinoAlertDialog(
            title: Text("Task Completed!"),
            content: Text("Leave a Review"),
            actions: [
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
            Expanded(
                child: ListView(
                  key: UniqueKey(),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageWidgets,
                ),
            ),
            SizedBox(
              width: 150,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Thanks for your help!",
                  style: TextStyle(
                    color: Color(0xffff8787),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Color(0xffff8787))
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 180,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Awesome job",
                  style: TextStyle(
                    color: Color(0xffff8787),
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: const BorderSide(color: Color(0xffff8787))
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                          messageWidget = MessageBubble(text: "");
                          messageWidget.text = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        messageWidgets.add(messageWidget);
                      });
                    },
                    child: const Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//ignore: must_be_immutable
class MessageBubble extends StatelessWidget {
  String text;

  MessageBubble({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.circular(20.0),
            elevation: 5.0,
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  )
              ),
            ),
          ),
        ]
      ),
    );
  }
}
