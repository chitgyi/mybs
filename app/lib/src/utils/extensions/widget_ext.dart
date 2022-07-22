import 'package:flutter/material.dart';

extension WidgetEx on Widget {
  Widget pLeft(double left) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: this,
    );
  }

  Widget pRight(double right) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: this,
    );
  }

  Widget pTop(double top) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: this,
    );
  }

  Widget pBottom(double bottom) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: this,
    );
  }

  Widget pHorizontal(double horizontal) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: this,
    );
  }

  Widget pVertical(double vertical) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: this,
    );
  }

  Widget pAll(double all) {
    return Padding(
      padding: EdgeInsets.all(all),
      child: this,
    );
  }

  Widget p(double left, double top, double right, double bottom) {
    return Padding(
      padding: EdgeInsets.only(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
      ),
      child: this,
    );
  }
}
