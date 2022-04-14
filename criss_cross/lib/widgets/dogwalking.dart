import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/widgets/home_appbar.dart';

import '../home.dart';
import 'applicant_tile.dart';

class DogWalking extends StatelessWidget {
  const DogWalking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Column(
          children: <Widget>[
            const HomeAppbar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text("Dogwalking", style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit, color: Colors.grey, size: 25),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                              "Posted 30 minutes ago",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )
                          ),
                          Text(
                              "\$18/hr",
                              style: TextStyle(
                                color: Color(0xffff8787),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                      child: Text("Description", style: TextStyle(
                          fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Looking for someone who's comfortable with large dogs to take Clifford"
                            " (my pet dog) on a walk tomorrow Monday! Clifford likes long walks,"
                            " so please walk him for 45 minutes at least.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        )
                      ),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Applicants", style: TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 15),
                      SizedBox (
                        height: 200,
                        child: ListView(
                          children: const <Widget>[
                            ApplicantTile(
                                image: "f",
                                name: "Joe Boden",
                                fivestar: true
                            ),
                            ApplicantTile(
                                image: "f",
                                name: "Blad Padin",
                                fivestar: true
                            ),
                            ApplicantTile(
                                image: "f",
                                name: "Helen Chong",
                                fivestar: false
                            ),
                            ApplicantTile(
                                image: "f",
                                name: "Manu Jakka",
                                fivestar: false
                            ),
                            ApplicantTile(
                                image: "f",
                                name: "Stephen Sathan",
                                fivestar: true
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: CurvedNavigationBar(
          color: Colors.white,
          backgroundColor: Colors.grey.withOpacity(0.1),
          buttonBackgroundColor:  Colors.yellow,
          height: 50,
          items: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(Icons.home, size: 26, color: Color(0xffff8787)),
            ),
            const Icon(Icons.add_outlined, size: 28, color: Color(0xffff8787)),
            const Icon(Icons.chat_bubble_outline_sharp, size: 26, color: Color(0xffff8787)),
          ],
          animationDuration: const Duration(
              microseconds: 200
          ),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: (index){
            debugPrint("Current Index is $index");
          },
        ),
      ),
    );
  }
}
