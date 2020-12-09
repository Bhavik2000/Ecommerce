import 'package:flutter/material.dart';
import 'package:genmish/product_description/components/rounded_icon_btn.dart';

import '../../size_config.dart';

class AddRemove extends StatefulWidget {
  @override
  _AddRemoveState createState() => _AddRemoveState();
}

class _AddRemoveState extends State<AddRemove> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {
              if (item > 1)
                setState(() {
                  item -= 1;
                });
            },
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
            child: Align(
              alignment: Alignment.center,
              child: Text('$item'),
            ),
          ),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {
              setState(() {
                item += 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
