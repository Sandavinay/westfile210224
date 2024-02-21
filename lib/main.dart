import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat GridView'),
        ),
        body: ChatGridView(),
      ),
    );
  }
}

class ChatGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ChatItem(index: index);
      },
    );
  }
}

class ChatItem extends StatelessWidget {
  final int index;

  ChatItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 100.0, // Adjust the width as needed
      height: 100.0, // Adjust the height as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lightBlue[200],
      ),
      child: Center(
        child: Text(
          'Chat $index',
          style: TextStyle(fontSize: 14.0),
        ),
      ),
    );
  }
}
