import '../widgets/notification.dart' as notif;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationData {
  final String name;
  final String post;
  final String description;

  const NotificationData({
    required this.name,
    required this.post,
    required this.description,
  });
}

const List<NotificationData> notificationList = [
  NotificationData(name: 'Rob Cunanan', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Leionah Cadion', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Rei Galvez', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Ivan Martirez', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Mike Gatchalian', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Mark Elizarde', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Jay Pusancho', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Liybie Paragatos', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Jhanna Dainega', post: 'NU! LETS GO!', description: 'Liked your post'),
  NotificationData(name: 'Rob Cunanan', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Leionah Cadion', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Rei Galvez', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Ivan Martirez', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Mike Gatchalian', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Mark Elizarde', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Jay Pusancho', post: 'Lab 1 done', description: 'Liked your post'),
  NotificationData(name: 'Liybie Paragatos', post: 'Campus walk', description: 'Liked your post'),
  NotificationData(name: 'Jhanna Dainega', post: 'Campus walk', description: 'Liked your post'),
  NotificationData(name: 'Rob Cunanan', post: 'Campus walk', description: 'Liked your post'),
  NotificationData(name: 'Leionah Cadion', post: 'Campus walk', description: 'Liked your post'),
];

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView.separated(
        itemCount: notificationList.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final n = notificationList[index];
          return notif.Notification(
            name: n.name,
            post: n.post,
            description: n.description,
          );
        },
      ),
    );
  }
}
