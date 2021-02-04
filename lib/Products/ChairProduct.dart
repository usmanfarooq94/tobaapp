
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tobaapp/Constant/Colors.dart';
import 'package:tobaapp/Constant/ExtraSpace.dart';
import 'package:tobaapp/SearchContent/Search.dart';
import 'package:tobaapp/Widgets/mediaquery.dart';
import 'package:tobaapp/Constant/Images.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ChairProduct extends StatefulWidget {
  @override
  _ChairProductState createState() => _ChairProductState();
}

class _ChairProductState extends State<ChairProduct> {
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
      body:
      ListView(
        children: [

          ExtraSpace(
            height: 20,
          ),
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
                  icon: Icon(Icons.wrap_text, color:Colors.white,),
                  label:Text(
                    'الفلتر',
                    style: TextStyle(
                        color: Colors.white,fontSize: 15),
                  ),

                  color: MyColors.ThemeColor2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side: BorderSide(color:MyColors.ThemeColor2)
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) =>//obahScreen()
                    //  ),
                    // );


                  },

                ),
              ),
              ExtraSpace(width: 10,),
              Container(

                child: Text('مقاولي البناء ( تسليم مفتاح )',
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17)
                  //TextStyle: Colors.grey.shade400,FontWeight.bold,
                ),
              ),

            ],
          ),
          ExtraSpace(
            height: 40,
          ),
          Center(
            child: Container(
              height: 45,
              width: 350,
              // decoration: BoxDecoration(
              //     border: Border.all(
              //       color: MyColors.ThemeColor2,
              //     ),
              //     borderRadius: BorderRadius.all(Radius.circular(20))
              // ),
              child: RaisedButton(
                color: MyColors.ThemeColor2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                    side: BorderSide(color:MyColors.ThemeColor2)
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) =>//obahScreen()
                  //  ),
                  // );

                },
                child: Text(
                  'طلب عرض من المقاولين',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          ExtraSpace(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            primary: true,
            itemBuilder: (context, index){
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
            child:Image.asset(
              chairforsale,
              fit: BoxFit.cover,
              height: 160,
            ),
            flex: 4,
          ),
          Expanded(
            child:Column(
              children: [
                ExtraSpace(height: 8,),
                Text('مكتب لنا للمقاولات العامة',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black,fontSize: 17),
                  textAlign: TextAlign.center,
                ),
                ExtraSpace(height: 10,),
                Text('بناء فلل - بناء ملاحق - بناء أبراج - بناء عمائر',
                  style: TextStyle(
                      color: Colors.black,fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                ExtraSpace(height: 10,),
                SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {
                    },
                    starCount: 5,
                    rating: rating,
                    size: 25.0,
                    isReadOnly:true,
                    filledIconData: Icons.blur_off,
                    halfFilledIconData: Icons.blur_on,
                    color: Colors.black,
                    borderColor: Colors.black,
                    spacing:0.0
                ),
                ExtraSpace(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('أمثلة من مشاريعنا',
                      style: TextStyle(
                          color: Color(0xff12BBAE),fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Container(color: Colors.black, height: 20 , width: 2,),

                    Text('طلب عرض سعر',
                      style: TextStyle(
                          color: Color(0xff12BBAE),fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ExtraSpace(height: 12,),
              ],
            ),
            flex: 6,
          ),
        ],
      ),
    );
  }
}
