import 'package:flutter/material.dart';
import 'package:doggy_details/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'recomendcards.dart';
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
        recomendcards(),
      ]),
    );
  }
}
