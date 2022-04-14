import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:profile/widgets/payment.dart';
import 'package:profile/widgets/home_appbar.dart';
import 'package:profile/widgets/gigs.dart';
import 'package:profile/widgets/messages.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    color: Colors.grey.withOpacity(0.1)
                ),

              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1)
                ),

              ),
            ],
          ),
          ListView(
            children: [
              HomeAppbar(),
              GigWidget(),
              MessageWidget(),
              PaymentWidget(),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: CurvedNavigationBar(

          color: Colors.white,
          backgroundColor: Colors.grey.withOpacity(0.1),
          buttonBackgroundColor:  Colors.yellow,
          height: 50,
          items: const <Widget>[
            Icon(Icons.home, size: 26, color: Color(0xffff8787)),
            Icon(Icons.add_outlined, size: 28, color: Color(0xffff8787)),
            Icon(Icons.chat_bubble_outline_sharp, size: 26, color: Color(0xffff8787)),
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
