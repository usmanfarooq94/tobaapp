import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/SearchContent/Search.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CementSelling extends StatefulWidget {
  @override
  _CementSellingState createState() => _CementSellingState();
}

class _CementSellingState extends State<CementSelling> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.instance = ScreenUtil(
      height: 700,
      width: MediaQuery.of(context).size.width,
      allowFontScaling: true,
    )..init(context);
    ScreenUtil screenUtil = ScreenUtil();
    return Scaffold(
      appBar: AppBar(
        title: SearchbyTextField(),
        actions: <Widget>[
          //IconButton
          //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.white,
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.comment,color: MyColors.ThemeColor2,
            size: 30,),
          tooltip: 'Comment Icon',
          onPressed: () {},
        ), //IconButton
        brightness: Brightness.dark,
      ),
      body: ListView(
        children: [
          ExtraSpace(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 40,
                width: 90,
                // decoration: BoxDecoration(
                //     border: Border.all(
                //       color: MyColors.ThemeColor2,
                //     ),
                //     borderRadius: BorderRadius.all(Radius.circular(20))
                // ),
                child: RaisedButton.icon(
                  icon: Icon(
                    Icons.wrap_text,
                    color: Colors.white,
                  ),
                  label: Text(
                    'الفلتر',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  color: MyColors.ThemeColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: MyColors.ThemeColor2)),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>//obahScreen()
                    //  ),
                    // );
                  },
                ),
              ),
              ExtraSpace(
                width: 10,
              ),
              Container(
                child: Text('المهندسون والمستشارون',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)
                  //TextStyle: Colors.grey.shade400,FontWeight.bold,
                ),
              ),
            ],
          ),
          ExtraSpace(
            height: 40,
          ),
          Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonsForTop(),
                  ButtonsForTop(),
                  ButtonsForTop(),
                  ButtonsForTop(),
                ],
              )),
          ExtraSpace(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            primary: true,
            itemBuilder: (context, index) {
              return ProductItems();
            },
          ),
        ],
      ),
    );
  }
}

class ProductItems extends StatelessWidget {
  @override
  var rating = 0.0;

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.green, spreadRadius: 1.5),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              cement,
              fit: BoxFit.fill,
              height: 205,
            ),
            flex: 4,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        ExtraSpace(
                          height: 6,
                        ),
                        Text(
                          'شركة اسمنت حائل',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20),
                          textAlign: TextAlign.right,
                        ),
                        ExtraSpace(
                          height: 4,
                        ),
                        Text(
                          'اسمنت مقاوم ثقيل',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
                Quantity()
                ,
                SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    rating: rating,
                    size: 25.0,
                    isReadOnly: true,
                    filledIconData: Icons.blur_off,
                    halfFilledIconData: Icons.blur_on,
                    color: Colors.black,
                    borderColor: Colors.black,
                    spacing: 0.0),
                ExtraSpace(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'السعر: 18 ريال',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'طلب عرض سعر',
                      style: TextStyle(color: Color(0xff12BBAE), fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ExtraSpace(
                  height: 6,
                ),
              ],
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class ButtonsForTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
      child: RaisedButton(
        child: Text(
          'الفلتر',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        color: MyColors.ThemeColor2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
            side: BorderSide(color: MyColors.ThemeColor2)),
        onPressed: () {},
      ),
    );
  }
}
class Quantity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExtraSpace(
          width: 10,
        ),
        Column(
          children: [
            Image.asset(
              angleup,
            ),
            ExtraSpace(
              height: 5,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.ThemeColor2,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 1),
                ],
              ),
              child: Text(
                '1',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ExtraSpace(
              height: 5,
            ),
            Image.asset(
              angledown,
            ),
          ],
        ),
      ],
    );
  }
}
