import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  ///  extension method to increase size of widget when hovered
  ///
  ///  [scaleFactor] parameter is mandatory, and defines the scale-factor to which the widget
  ///   is scaled , while hovering.
  ///
  ///  [duration] paramater is optional, and defines the duration of the hovering animation.
  ///   Defaults to Duration of seconds: 1.
  ///
  ///
  Widget increaseSizeOnHover(
    double scaleFactor, {
    Duration duration = const Duration(seconds: 1),
  }) {
    bool isHovered = false;
    return StatefulBuilder(
      builder: (context, setState) {
        return MouseRegion(
          cursor: SystemMouseCursors.click,
          onEnter: (event) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isHovered = false;
            });
          },
          child: AnimatedContainer(
            duration: duration,
            curve: Curves.easeInOut,
            transformAlignment: Alignment.center,
            transform: isHovered
                ? Matrix4.diagonal3Values(scaleFactor, scaleFactor, 1.0)
                : Matrix4.diagonal3Values(1.0, 1.0, 1.0),
            child: this,
          ),
        );
      },
    );
  }
}
