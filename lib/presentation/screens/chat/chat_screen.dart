import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_messange_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_messange_bubble.dart';

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
                'https://hips.hearstapps.com/hmg-prod/images/ana-de-armas-fitness-diet-1660056633.jpg?crop=0.426xw:0.813xh;0,0&resize=640:*'),
          ),
        ),
        title: const Text('Mi Amor ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return (index % 2 == 0)
                        ? HerMessangeBubble()
                        : MyMessangeBubble();
                  })),
          Text('Mundo')
        ],
      ),
    ));
  }
}
