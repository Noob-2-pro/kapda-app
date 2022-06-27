import 'package:flutter/material.dart';

import '../../../sizeConfig.dart';

class SectionBreakTitle extends StatelessWidget {
  final String text;
  final onpress;

  const SectionBreakTitle({Key key, this.text, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(fontSize: getProportionateScreenWidth(18), color: Colors.black),
          ),
          const Spacer(),
          GestureDetector(
              onTap: onpress,
              child: Text(
                'See More',
                style: TextStyle(color: Colors.grey.shade500),
              )),
        ],
      ),
    );
  }
}
