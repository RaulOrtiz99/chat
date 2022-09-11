import 'dart:ui';

import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 14,
                child: Text(
                  'Te',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                backgroundColor: Colors.blue[100],
              ),
            ),
            SizedBox(height: 3),
            Text(
              "Melissa Flores",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, i) => Text('$i'),
                reverse: true,
              ),
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
