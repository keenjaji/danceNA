import 'package:flutter_login_ui/pages/Data/User.dart';
import 'package:flutter_login_ui/pages/Data/Video.dart';

class UserPreferences {
  static var myUser = User(
    imagePath:
        'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Keen ja',
    about: 'วิดีโอเต้น',
    about2: 'วิดีโอโคเวอร์',
    isDarkMode: false,
  );
  static var myUser2 = User(
    imagePath:
        'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Keen ja',
    about: 'วิดีโอโคเวอร์',
    about2: 'วิดีโอโคเวอร์',
    isDarkMode: false,
  );
  static const myVideos = Videos(videos: 'อิอิ');
  static const myVideos2 = Videos(videos: 'อิอิอิ');
}
