import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void showToastState(BuildContext context, String msg) {
  showToast(
    msg,
    context: context,
    animation: StyledToastAnimation.slideFromTop,
    // reverseAnimation: StyledToastAnimation.slideToTop,
    position: StyledToastPosition.bottom,
    startOffset: const Offset(0.0, 3.0),
    // reverseEndOffset: const Offset(0.0, -3.0),
    duration: const Duration(seconds: 3),
    animDuration: const Duration(seconds: 1),
    curve: Curves.elasticOut,
    reverseCurve: Curves.bounceOut,
  );
}
