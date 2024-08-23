import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:untitled4/screen1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Color> b = [
    Color(0xFFCCBCBC),
    Color(0xFFF6F6F6),
    Color(0x93FCC21A),
    Color(0xFFF6F6F6),
  ];
  List<String> c = [
    "assets/a.png",
    "assets/b.png",
    "assets/c.png",
    "assets/d.png"
  ];
List<String>d=["TOYOTA","LAMBORGHINI",'RANGE ROVER',
  'TESLA',
];
List<String>e=[ '\$300','\$550','\$150','\$150',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: Row(
              children: [
                Icon(Icons.menu, size: 37.sp),
                SizedBox(
                  width: 260.w,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 37.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Stack(
            children: [
              Container(
                width: 347.w,
                height: 148.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Text(
                  '30%\n',
                  style: TextStyle(
                    color: Color(0xFFE5E5E5),
                    fontSize: 48.sp,
                    fontFamily: 'Imprima',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 15.h),
                child: Text(
                  'THIS JULY',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontFamily: 'Imprima',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.w, top: 60.h),
                child: Text(
                  'Travel to the end of the \nworld this whole month\ncause we care when you \nare happy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8.sp,
                    fontFamily: 'Kaushan Script',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.h, left: 15.w),
                child: Text(
                  'Off',
                  style: TextStyle(
                    color: Color(0xFFFCC21B),
                    fontSize: 55.sp,
                    fontFamily: 'Imprima',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 190.w, top: 120.h),
                child: Container(
                  width: 133.w,
                  height: 18.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF988080),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      children: [
                        Text(
                          'Try Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20.sp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 100.w, top: 20.h),
            child: Text(
              'Cars Available Near You',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List.generate(b.length, (index) {
                return Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Stack(
                      children: [
                        TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen1(image: c[index], text: d[index],)));},
                          child: Container(
                            height: 230.h,
                            width: 200.w,
                            decoration: ShapeDecoration(
                                color: b[index],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r)),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4.r,
                                  ),
                                ]
                            ),
                          ),
                        ),Image.asset(c[index]),
                        
                        Padding(
                          padding:  EdgeInsets.only(top: 90.h,left: 20.w),
                          child: Text(d[index]),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 110.h,left: 20.w),
                          child: Row(
                            children: [
                              Text(e[index]),
                              Text('/day',
                              style: TextStyle(
                                color: Color(0xFF988080),
                                fontSize: 10.sp,
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 120.h,left: 120.w),
                          child: Row(
                            children: [
                              Icon(Icons.favorite_border_rounded,color: Colors.red,),
                              Icon(Icons.arrow_circle_right,color:Colors.black54 ,)
                            ],
                          ),
                        ),


                      ],
                    ));
              }))
        ]),
      ),
    );
  }
}
