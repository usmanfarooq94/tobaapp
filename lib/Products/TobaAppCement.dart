import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/SearchContent/Search.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TobaAppCement extends StatefulWidget {
  @override
  _TobaAppCementState createState() => _TobaAppCementState();
}

class _TobaAppCementState extends State<TobaAppCement> {
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

      // Icon(Icons.comment,color: MyColors.ThemeColor2,
      //             size: 30,),
      body: ListView(
        children: [
          ExtraSpace(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Icon(Icons.message,color: MyColors.ThemeColor4,
                             size: 30,),
              ),

              ExtraSpace(
                width: 90,
              ),
              Container(
                height: 40,
                width: 90,
                // decoration: BoxDecoration(
                //     border: Border.all(
                //       color: MyColors.ThemeColor2,
                //     ),
                //     borderRadius: BorderRadius.all(Radius.circular(20))
                // ),
                child: RaisedButton(
                  child: Text(
                    'عودةللخلف',
                    style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                  color: MyColors.ThemeColor4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color: MyColors.ThemeColor4)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Center(
              child: Text('سلة الشراء',
                style: TextStyle(fontSize: 35),
              )
          ),

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
          Center(
            child: Container(
              height: 45,
              width: 350,

              child: RaisedButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    side: BorderSide(color:MyColors.ThemeColor4)
                ),
                onPressed: () {

                },
                child: Text(
                  '255 ريال',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: MyColors.ThemeColor4,fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ExtraSpace(height: 20,),
          Center(
            child: Container(
              height: 45,
              width: 350,

              child: RaisedButton(
                color: MyColors.ThemeColor4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    side: BorderSide(color:MyColors.ThemeColor4)
                ),
                onPressed: () {

                },
                child: Text(
                  'الإستمرار لدفع',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ExtraSpace(height: 20,),

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
          BoxShadow(color: Colors.grey, spreadRadius: 1.5),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  cementtoba,
                  fit: BoxFit.fill,
                  height: 185,
                ),
                Positioned(
                  top: 50,
                  left: 10,

                  child: Center(
                    child: Image.asset(
                      cementlogo,
                      height: 60,
                    ),
                  ),
                ),
              ],
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
                          height: 2,
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
                          height: 1,
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
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'السعر: 18 ريال',
                      style: TextStyle(color: MyColors.ThemeColor4, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      color: Colors.black,
                      height: 20,
                      width: 2,
                    ),
                    Text(
                      'طلب عرض سعر',
                      style: TextStyle(color: MyColors.ThemeColor4, fontSize: 15),
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
              height: 3,
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.ThemeColor4,
                boxShadow: [
                  BoxShadow(color: MyColors.ThemeColor4, spreadRadius: 1),
                ],
              ),
              child: Text(
                '1',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            ExtraSpace(
              height: 3,
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
