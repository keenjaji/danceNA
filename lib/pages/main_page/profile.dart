import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/Data/User.dart';
import 'package:flutter_login_ui/pages/Data/UserPreferences.dart';
import 'package:flutter_login_ui/widget/appbar_widget.dart';
import 'package:flutter_login_ui/widget/button_widget.dart';
import 'package:flutter_login_ui/widget/numbers_widget.dart';
import 'package:flutter_login_ui/widget/profile_widget.dart';
import 'package:flutter_login_ui/pages/Data/Video.dart';

import '../../widget/number_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var user = UserPreferences.myUser;

    return Scaffold(
        body: Container(
      color: Color(0xfff9ccf9),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 30,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 5),
          buildName(user),
          const SizedBox(height: 5),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 4),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Original Dance  ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    user = UserPreferences.myUser;
                  });
                },
              ),
              Text('|'),
              MaterialButton(
                padding: EdgeInsets.symmetric(vertical: 4),
                onPressed: () {
                  setState(() {
                    user = UserPreferences.myUser2;
                  });
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '  Cover Dance',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 2),
                    Container()
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    ));
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Edit profile',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  Widget buildAbout2(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              user.about2,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
