import 'package:flutter/material.dart';
import "package:doggy_details/constants.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'imageAndIcon.dart';

class title extends StatelessWidget {
  const title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: kDefaultPadding),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Labrador",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 30),
        Expanded(
          child: SizedBox(
            child: Text(
              "Labradors are known for their friendly and outgoing personalities, which make them excellent family pets and therapy dogs.",
              style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
            ),
          ),
        ),
      ],
    );
  }
}
