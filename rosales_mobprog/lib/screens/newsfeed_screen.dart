import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
            userName: 'EJ Anthony Rosales',
            profileImage: 'assets/images/ej.jpg',
            currentUserImage: 'assets/images/ej.jpg',
            postContent: 'NU! LETS GO!',
            date: 'November 21, 2026',
            numOfLikes: 10,
            hasImage: true,
            postImage: 'assets/images/Champion.png',
        ),

        NewsFeedCard(
            userName: 'Rob Cunanan',
            profileImage: 'assets/images/rob.jpg',
            currentUserImage: 'assets/images/ej.jpg',
            postContent: 'Freaky Friday!',
            date: 'November 20, 2026',
            numOfLikes: 5,
            hasImage: false,
        ),
      ],
    );
  }
}