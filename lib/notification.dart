import 'dart:ui';

import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Color(0xff2874F0),
        title: Text("Notification"),
      ),
      body: Center(
        child: Text(
          "No Notification yet",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
