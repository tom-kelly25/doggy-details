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
      child: Column(children: <Widget>[
        header(size: size),
        titleAndButton(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              recomend(
                image: "assets/img/german shepherd.png",
                title: "german shepherd",
                press: () {},
              ),
              recomend(
                image: "assets/img/german shepherd.png",
                title: "german shepherd",
                press: () {},
              ),
              recomend(
                image: "assets/img/german shepherd.png",
                title: "german shepherd",
                press: () {},
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class recomend extends StatelessWidget {
  const recomend({
    super.key,
    required this.image,
    required this.title,
    required this.press,
  });
  final String image;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(image),
          ),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
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
                            // text: "German Shepherd".toUpperCase(),
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
