import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20)

                      ),
                      child: const Icon(Icons.chat_rounded, size: 26, color: Color(0xffff8787)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 70),
                      child: Text("Messages", style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Lead to dogwalking gig "portal"
                      },
                      icon: const Icon(Icons.arrow_right_alt_rounded, color: Colors.black, size: 30),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "No new messages!",
                  style: TextStyle(
                    color: Colors.black26,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  )
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
