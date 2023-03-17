import 'package:flutter/material.dart';
import "package:doggy_details/constants.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'imageAndIcon.dart';
import 'title.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        imageAndIcon(size: size),
        title(),
        SizedBox(
          height: 5,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      primary: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "More information",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      primary: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "More Images",
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
        )
      ],
    );
  }
}
