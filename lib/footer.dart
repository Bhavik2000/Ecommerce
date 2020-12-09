import 'package:flutter/material.dart';
import 'package:genmish/size_config.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.amber.withOpacity(0.1)),
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(10),
          left: getProportionateScreenHeight(10),
          bottom: getProportionateScreenHeight(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff2874F0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              'assets/images/flutter2.png',
              height: 150,
              width: 150,
            ),
          ),
          Container(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Need Help?",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Help in order placement",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Issues with delivery",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Online payment issues",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Have a Suggestion/Inquiry",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
