# EJ Anthony E. Rosales, BSIT-MWA
### INF247
### 2024-1003520

Laboratory 2: Facebook News Feed Enhancement

Posts and notifications. Instead of manually creating NewsFeedCard and Notification widget instances in a Column, I have described their structure using PostData and NotificationData classes and put them into lists (10 posts in postList and 20 notifications in notificationList). The notifications only list people who liked a post; comment notifications are left for the next part. Now the screens use ListView.builder and ListView.separated and display only those rows that are currently visible and auto-scroll them. Consequently, the addition of a new post or notification consists in appending another item in a list, without any change in the widget code.

Enhancement 1 (dynamic post). Now each post contains its own number of likes (numOfLikes), its own date, and the hasPlaceholder attribute. If hasPlaceholder is true, the card displays a Placeholder box, otherwise – nothing. A post can also be created using a real postImage, in which case it is displayed instead of the placeholder. Like button works in the same way on every card due to the individual liked state for each card.

Enhancement 2 (dynamic AppBar). HomeScreen holds a list of titles in the same order as the pages and the navigation items, and the AppBar's title takes values from this list depending on the selected index. The title is being updated whenever the user clicks a tab or swipes the PageView, since the index is being updated using onPageChanged method.

Enhancement 3 (more BottomNavigationBarItem). I have introduced Profile item and ProfileScreen, hence the navigation bar contains Home, Notifications, and Profile items with corresponding pages in the PageView.

Enhancement 4 (app name). The app is now named EPBEH. It contains the name stored once as appName in constants.dart and used by the MaterialApp title, AppBar, and profile screen.

Enhancement 5 (color palette). I have replaced Facebook blues with the indigo and gold color palette in constants.dart (appPrimary, appSecondary, appDarkPrimary, appLightPrimary, appTextColorWhite, appBackground). At the same time, I have renamed the FB_ constants to camelCase names that follow Dart's naming style and match the new app name, and applied the palette to the MaterialApp theme.

Challenges and how I solved them:

1. Name conflict. There already exists a class named Notification in Flutter, therefore my Notification widget was conflicting with it. To resolve the issue, I imported it using a prefix (import '../widgets/notification.dart' as notif;) and used notif.Notification in the screen.

2. Overflow with 20 notifications. A Column cannot scroll, hence the overflow of 20 items in the screen. Therefore, I used ListView.separated, which can scroll and draw the Divider between items.

3. The navigation bar and pages are not consistent. In Lab 1, the navigation bar contained two items, whereas the PageView consisted of only one page, so clicking Notifications marked the tab but left the feed on the screen. The issue was solved by introducing notification and profile pages so that the number of pages matched the number of items.

4. Placeholder vs image. I have renamed hasImage to hasPlaceholder to adhere to the lab task but I still needed to use the real image as in Lab 1. So, I made postImage optional: if it is provided, it is displayed; otherwise, the placeholder is displayed only if hasPlaceholder is true.
