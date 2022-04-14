import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'applicant.dart';

class ApplicantTile extends StatelessWidget {
  final String image;
  final String name;
  final bool fivestar;

  const ApplicantTile({required this.image, required this.name, required this.fivestar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Applicant()));
          },
          child: ListTile(
            leading: Image.asset('assets/images/avatar.png', width: 40),
            title: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            trailing: SizedBox(
              width: 80,
              child: !fivestar ? Row(
                children: const <Widget>[
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                ],
              ) : Row(
                children: const <Widget>[
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                  Icon(Icons.star_outlined, size: 15),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
