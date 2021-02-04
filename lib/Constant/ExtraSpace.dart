import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:flutter/cupertino.dart';

class ExtraSpace extends StatelessWidget {
  double height, width;
  ExtraSpace({this.width = 0, this.height = 0});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: ScreenUtil().setHeight(height),
      width: ScreenUtil().setWidth(width),
    );
  }
}
