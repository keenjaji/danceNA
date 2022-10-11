import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_ui/common/theme_helper.dart';
import 'package:flutter_login_ui/pages/sub_page/OriginalDance_page.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9ccf9),
      body: Column(
        children: [
          Container(
            height: 400,
            child: Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 342,
                        height: 349,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          border: Border.all(
                            color: Colors.black,
                            width: 5,
                          ),
                          color: Color(0xff544883),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 67.81,
                              top: 17,
                              child: SizedBox(
                                width: 208.49,
                                height: 93.72,
                                child: Text(
                                  "Original Mode",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 111.05,
                              top: 84.81,
                              child: Container(
                                width: 124.81,
                                height: 143.59,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: FlutterLogo(size: 124.81034851074219),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 200,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: 308.17,
                        height: 129.09,
                        child: Text(
                          "\n\nอัดคลิปกำหนดท่าเต้นด้วยตนเอง\nและแบ่งปันให้ผู้อื่นเต้นตาม\nมาโชว์เสต็ปกันหน่อย!!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: ThemeHelper().buttonBoxDecoration(context),
            child: ElevatedButton(
              style: ThemeHelper().buttonStyle(),
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text(
                  'Start'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              onPressed: () {
                //After successful login we will redirect to profile page. Let's create profile page now
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => OriginalPage()));
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
