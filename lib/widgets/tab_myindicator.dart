
import 'package:flutter/material.dart';

class MyUnderlineTabIndicator extends Decoration {

  const MyUnderlineTabIndicator({
    this.borderSide = const BorderSide(width: 2.0, color: Colors.pink),
    this.insets = EdgeInsets.zero,
  }) : assert(borderSide != null),
        assert(insets != null);

  final BorderSide borderSide;

  final EdgeInsetsGeometry insets;


  @override
  Decoration lerpFrom(Decoration a, double t) {
    if (a is MyUnderlineTabIndicator) {
      return MyUnderlineTabIndicator(
        borderSide: BorderSide.lerp(a.borderSide, borderSide, t),
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t),
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  Decoration lerpTo(Decoration b, double t) {
    if (b is MyUnderlineTabIndicator) {
      return MyUnderlineTabIndicator(
        borderSide: BorderSide.lerp(borderSide, b.borderSide, t),
        insets: EdgeInsetsGeometry.lerp(insets, b.insets, t),
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  _UnderlinePainter createBoxPainter([ VoidCallback onChanged ]) {
    _UnderlinePainter _underlinePainter =  _UnderlinePainter(this, onChanged);
    return _underlinePainter;
  }
}

class _UnderlinePainter extends BoxPainter {
  _UnderlinePainter(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  final MyUnderlineTabIndicator decoration;

  BorderSide get borderSide => decoration.borderSide;
  EdgeInsetsGeometry get insets => decoration.insets;

  //希望的宽度
  double indicatorWidth = 22;
  double get getIndicatorWidth => indicatorWidth;
  set setIndicatorWidth(double width) => this.indicatorWidth = width;

  Rect _indicatorRectFor(Rect rect, TextDirection textDirection) {
    assert(rect != null);
    assert(textDirection != null);
    final Rect indicator = insets.resolve(textDirection).deflateRect(rect);
//    return Rect.fromLTWH(
//      indicator.left,
//      indicator.bottom - borderSide.width,
//      indicator.width,
//      borderSide.width,
//    );

    //取中间坐标
    double cw = (indicator.left + indicator.right) / 2;
    return Rect.fromLTWH(cw - indicatorWidth / 2, indicator.bottom - borderSide.width, indicatorWidth, borderSide.width);
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    final Rect rect = offset & configuration.size;
    final TextDirection textDirection = configuration.textDirection;
    final Rect indicator = _indicatorRectFor(rect, textDirection).deflate(borderSide.width / 2.0);
    final Paint paint = borderSide.toPaint()..strokeCap = StrokeCap.round; //圆角
    canvas.drawLine(indicator.bottomLeft, indicator.bottomRight, paint);
  }

}