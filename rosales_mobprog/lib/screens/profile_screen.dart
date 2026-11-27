import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../widgets/custom_font.dart';
import 'newsfeed_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      padding: EdgeInsets.all(ScreenUtil().setSp(20)),
      child: Column(
        children: [
          CircleAvatar(
            radius: ScreenUtil().setSp(45),
            backgroundImage: const AssetImage(currentUserImage),
          ),
          SizedBox(height: ScreenUtil().setHeight(12)),
          CustomFont(
            text: 'EJ Anthony Rosales',
            fontSize: ScreenUtil().setSp(22),
            color: appDarkPrimary,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: ScreenUtil().setHeight(4)),
          CustomFont(
            text: '${postList.length} posts on $appName',
            fontSize: ScreenUtil().setSp(13),
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
