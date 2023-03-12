import 'package:flutter/material.dart';
import 'package:doggy_details/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'recomendcards.dart';
import 'header.dart';
import 'titleAndButton.dart';
import 'titleAndButtonFeature.dart';

class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          header(size: size),
          titleAndButton(),
          recomendcards(),
          titleAndButtonFeature(),
          featuredCard()
        ],
      ),
    );
  }
}

class featuredCard extends StatelessWidget {
  const featuredCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 4,
        ),
        width: size.width * 0.8,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/img/lab.png",
            ),
          ),
        ),
      ),
    );
  }
}
