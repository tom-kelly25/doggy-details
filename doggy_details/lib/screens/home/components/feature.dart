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
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(kDefaultPadding),
              bottomRight: Radius.circular(kDefaultPadding),
            ),
            child: Container(
              margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding / 2,
                  bottom: kDefaultPadding / 10),
              width: size.width * 0.8,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding),
                bottomRight: Radius.circular(kDefaultPadding),
              ),
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
                  SizedBox(height: kDefaultPadding / 2),
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
