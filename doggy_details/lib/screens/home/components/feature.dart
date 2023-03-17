import 'package:flutter/material.dart';
import 'package:doggy_details/constants.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'header.dart';
import 'titleAndButton.dart';

class featuredCard extends StatelessWidget {
  const featuredCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Container(
              margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding / 2,
              ),
              width: size.width * 0.8,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/img/husky.png",
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.8,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              bottom: kDefaultPadding * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding),
                bottomRight: Radius.circular(kDefaultPadding),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                )
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                bottom: kDefaultPadding / 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Husky',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Text(
                    'Huskies are a breed of dog that originated in Siberia, Russia.',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
