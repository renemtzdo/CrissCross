import 'package:flutter/material.dart';
import 'package:profile/widgets/chat_screen.dart';

class Applicant extends StatelessWidget {
  const Applicant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [Color(0xffff8787), Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 40)
                    )
                  ],
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                          height: 200,
                          child: Image.asset('assets/images/avatar.png', width: 180)
                      ),
                      const Text("Stephen Sathan", style: TextStyle(
                          fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      const Text("Berkeley, CA", style: TextStyle(
                          fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text("Description", style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "My name is Stephen, and I'm a pet enthusiast and aspiring veterinarian!"
                      " I have two dogs at home that I take care of, and I'd be happy"
                      " to dogsit yours! Looking forward to working with you.",
                  style: TextStyle(
                    height: 1.8,
                    fontSize: 16,
                    color: Colors.black54,
                  )
                ),
                const SizedBox(height: 30),
                const Text("Affiliated Groups", style: TextStyle(
                    fontSize: 22),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Berkeley Pet Group",
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
                          "Cal Christian Fellowship",
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
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "64 reviews",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Latest review:",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "Awesome work!",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "—Kyle Wiggs!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ]
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Average rating",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.star_outlined, color: Color(0xffff8787), size: 18),
                            Icon(Icons.star_outlined, color: Color(0xffff8787), size: 18),
                            Icon(Icons.star_outlined, color: Color(0xffff8787), size: 18),
                            Icon(Icons.star_outlined, color: Color(0xffff8787), size: 18),
                            Icon(Icons.star_half, color: Color(0xffff8787), size: 18),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "View all",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffff8787)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                const Text("Work Experience", style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: 120,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Dog sitting",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffff8787)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Baby sitting",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffff8787)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30)
              ]
            ),
          ),
        ),
        floatingActionButton: SizedBox(
          height: 80,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.check_outlined, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
