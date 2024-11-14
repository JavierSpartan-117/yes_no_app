import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
    const ChatScreen({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                leading: const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: CircleAvatar(
                        backgroundImage: NetworkImage('https://ugc-idle.s3-us-west-2.amazonaws.com/72a515b69524e735c753ed881d40581c.jpg'),
                    )
                ),
                title: const Text('Chat'),
            ),
        );
    }
}