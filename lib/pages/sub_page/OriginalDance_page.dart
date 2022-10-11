import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/main_page.dart';
import 'package:flutter_login_ui/pages/main_page/home.dart';

class OriginalPage extends StatelessWidget {
  const OriginalPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a924),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          Text(
            'ดีจ้า',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'กลับก่อนนะ'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              onPressed: () {
                //After successful login we will redirect to profile page. Let's create profile page now
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
