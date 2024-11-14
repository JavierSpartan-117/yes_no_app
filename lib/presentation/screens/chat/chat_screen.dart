import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ugc-idle.s3-us-west-2.amazonaws.com/72a515b69524e735c753ed881d40581c.jpg'),
              )),
          title: const Text('Chat'),
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
              return const MyMessageBubble();
            })),
            const Text('Chat'),
          ],
        ),
      ),
    );
  }
}
