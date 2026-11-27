import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class PostData {
  final String userName;
  final String profileImage;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasPlaceholder;
  final String? postImage;

  const PostData({
    required this.userName,
    required this.profileImage,
    required this.postContent,
    required this.date,
    this.numOfLikes = 0,
    this.hasPlaceholder = false,
    this.postImage,
  });
}

const String currentUserImage = 'assets/images/ej.jpg';

const List<PostData> postList = [
  PostData(
    userName: 'EJ Anthony Rosales',
    profileImage: 'assets/images/ej.jpg',
    postContent: 'NU! LETS GO!',
    date: 'November 21',
    numOfLikes: 10,
    postImage: 'assets/images/Champion.png',
  ),
  PostData(
    userName: 'Rob Cunanan',
    profileImage: 'assets/images/rob.jpg',
    postContent: 'Freaky Friday!',
    date: 'November 20',
    numOfLikes: 5,
  ),
  PostData(
    userName: 'Leionah Cadion',
    profileImage: 'assets/images/baba.jpg',
    postContent: 'LIBRE NYO KOH!!!',
    date: 'October 11',
    numOfLikes: 100,
  ),
  PostData(
    userName: 'Rei Galvez',
    profileImage: 'assets/images/rei.jpg',
    postContent: 'Please? EHEM!',
    date: 'December 2',
    numOfLikes: 48,
    postImage: 'assets/images/lens.jpg',
  ),
  PostData(
    userName: 'Ivan Martirez',
    profileImage: 'assets/images/ivan.jpg',
    postContent: 'Longsword run is finally smooth. Spirit gauge never drops.',
    date: 'November 19',
    numOfLikes: 23,
  ),
  PostData(
    userName: 'Mike Gatchalian',
    profileImage: 'assets/images/mike.jpg',
    postContent: 'YAASSSS 😩🖤',
    date: 'November 18',
    numOfLikes: 67,
    postImage: 'assets/images/drag.jpg',
  ),
  PostData(
    userName: 'Mark Elizarde',
    profileImage: 'assets/images/mark.jpg',
    postContent: 'Group study at the library tomorrow, who is in?',
    date: 'November 17',
    numOfLikes: 12,
  ),
  PostData(
    userName: 'Jay Pusancho',
    profileImage: 'assets/images/jay.jpg',
    postContent: 'KATAMAD PUMASOK!!!',
    date: 'November 15',
    numOfLikes: 31,
  ),
  PostData(
    userName: 'Liybie Paragatos',
    profileImage: 'assets/images/levi.jpg',
    postContent: 'Coffee first, Flutter later.',
    date: 'November 12',
    numOfLikes: 9,
  ),
  PostData(
    userName: 'Jhanna Dainega',
    profileImage: 'assets/images/jhanna.jpg',
    postContent: 'Nagkita-kita narin sa wakas!',
    date: 'November 9',
    numOfLikes: 54,
    postImage: 'assets/images/usus.jpg',
  ),
];

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postList.length,
      itemBuilder: (context, index) {
        final post = postList[index];
        return NewsFeedCard(
          userName: post.userName,
          profileImage: post.profileImage,
          currentUserImage: currentUserImage,
          postContent: post.postContent,
          date: post.date,
          numOfLikes: post.numOfLikes,
          hasPlaceholder: post.hasPlaceholder,
          postImage: post.postImage,
        );
      },
    );
  }
}
