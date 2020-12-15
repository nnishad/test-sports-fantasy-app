import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_login_flutter/smartDeck/utils/Extension.dart';
import 'package:test_login_flutter/smartDeck/utils/T3BottomNavigationBar.dart';
import 'package:test_login_flutter/smartDeck/utils/T3Constant.dart';
import 'package:test_login_flutter/smartDeck/utils/T3Images.dart';
import 'package:test_login_flutter/smartDeck/utils/colors.dart';
import 'package:test_login_flutter/smartDeck/utils/strings.dart';
import 'package:test_login_flutter/smartDeck/utils/widgets.dart';

class SDHomePageScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _SDHomePageScreenState createState() => _SDHomePageScreenState();
}

class _SDHomePageScreenState extends State<SDHomePageScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // changeStatusColor(sdAppBackground);

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: t3_app_background,
        color: t3_white,
        items: <Widget>[
          SvgPicture.asset(
            t3_ic_home,
            height: 24,
            width: 24,
            fit: BoxFit.none,
          ),
          SvgPicture.asset(
            t3_ic_msg,
            height: 24,
            width: 24,
            fit: BoxFit.none,
          ),
          SvgPicture.asset(
            t3_notification,
            height: 24,
            width: 24,
            fit: BoxFit.none,
          ),
          SvgPicture.asset(
            t3_ic_user,
            height: 24,
            width: 24,
            fit: BoxFit.none,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: SafeArea(
        child: Container(
          color: t3_app_background,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                width: 180,
                alignment: Alignment.center,
                child: ring(t3_lbl_welcome_to_bottom_n_navigation_bar),
              ),
              Container(
                height: 60,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: t3_textColorPrimary,
                      onPressed: () {
                        back(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: text(t3_lbl_bottom_navigation,
                            fontFamily: fontBold,
                            textColor: t3_textColorPrimary,
                            fontSize: 22.0),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
