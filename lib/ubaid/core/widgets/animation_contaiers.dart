import 'package:flutter/material.dart';

class AnimationWidgets extends StatelessWidget {
  const AnimationWidgets({
    super.key,
    required this.update,
  });

  final bool update;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      top: update ? MediaQuery.of(context).size.height / 2 : 500,
      left: update ? MediaQuery.of(context).size.width / 2.5 : 100,
      // curve: Curves.decelerate,
      child: InkWell(
        onTap: () {
          // setState(() {
          //   update = !update;
          // });
        },
        child: AnimatedContainer(
          height: update ? 20 : 150,
          width: update ? 20 : 150,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
