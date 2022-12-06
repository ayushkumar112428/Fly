import 'package:flutter/material.dart';

class AppLayoutBuildaer extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const AppLayoutBuildaer({Key? key, this.isColor, required this.sections})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections).floor(),
              // ignore: prefer_const_constructors
              (index) => SizedBox(
                    width: 5,
                    height: 1,
                    // ignore: prefer_const_constructors
                    child: DecoratedBox(
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                      color: isColor == true ? Colors.grey.shade100 : Colors.black,
                    )),
                  )),
        );
      },
    );
  }
}
