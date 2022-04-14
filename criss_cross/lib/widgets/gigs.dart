import 'package:flutter/material.dart';
import 'package:profile/widgets/dogwalking.dart';

class GigWidget extends StatelessWidget {
  const GigWidget({Key? key}) : super(key: key);

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
                      child: const Icon(Icons.calendar_month, size: 26, color: Color(0xffff8787)),
                    ),
                    const SizedBox(width: 20),
                    const Text("Gigs", style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffff8787),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text("Dogwalking", style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // Lead to dogwalking gig "portal"
                                Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const DogWalking()));
                              },
                              icon: const Icon(Icons.arrow_right_alt_rounded, color: Colors.white, size: 30),
                            ),
                          ],
                        ),
                        const SizedBox(height:15),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("5 Applicants", style: TextStyle(
                              fontSize: 14, fontStyle: FontStyle.italic,
                              color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold,
                              color: Colors.black,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // View all gigs the parent has posted.
                        },
                        icon: const Icon(Icons.arrow_circle_right, color: Colors.grey, size: 30),
                      ),
                    ],
                  )
                ),
              ],
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
