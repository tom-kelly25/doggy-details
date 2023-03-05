import 'package:flutter/material.dart';
import 'package:doggy_details/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';
import 'titleAndButton.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          header(size: size),
          titleAndButton(),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5,
            ),
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/img/german shepherd.png"),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "German Shepherd".toUpperCase(),
                                style: Theme.of(context).textTheme.button)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
