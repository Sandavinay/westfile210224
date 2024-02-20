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
        crossAxisCount: 2, // Set the number of columns in the grid
      ),
      itemCount: 10, // Set the number of items in the grid
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
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Chat $index',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
