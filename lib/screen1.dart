import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key, required this.image, required this.text});
final String image;
final String text;
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 380.h,
                width: 410.w,
                decoration: ShapeDecoration(
                  color: Color(0xFF95BCCC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 290.h),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 30.sp,
                        ),
                      ),
                      SizedBox(
                        width: 300.w,
                      ),
                      Icon(
                        Icons.more_vert_sharp,
                        color: Colors.black,
                        size: 30.sp,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140.h),
                child: Text(
                  'TIIRA',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.4399999976158142),
                    fontSize: 129.sp,
                    fontFamily: 'Imprima',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 190.h),
                child: Image.asset(widget.image),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 10.h),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                ),
                Text(
                  '\$200.00',
                  style: TextStyle(
                    color: Color(0xFFC54949),
                    fontSize: 12.sp,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 200.w,
                      height: 100.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF6F6F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4.r,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 50.w),
                      child: Text(
                        'Transition',
                        style: TextStyle(
                          color: Color(0xFF95BCCC),
                          fontSize: 15.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h, left: 50.w),
                      child: Text(
                        'Automatic',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Stack(
                  children: [
                    Container(
                      width: 200.w,
                      height: 100.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF6F6F6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.r)),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4.r,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.w, top: 10.h),
                      child: Text(
                        'Speed',
                        style: TextStyle(
                          color: Color(0xFF95BCCC),
                          fontSize: 15.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.w, top: 40.h),
                      child: Text(
                        ' 200kmph',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                    width: 200.w,
                    height: 100.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4.r,
                          offset: Offset(0, 4),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Transition',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 250.w, top: 20.h),
            child: Text(
              'RENDER',
              style: TextStyle(
                color: Color(0xFF2B4C59),
                fontSize: 15.sp,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 20.w),
            child: Row(
              children: [
                Image.asset(
                  "assets/e.png",
                  height: 50.h,
                  width: 80.w,
                ),
                Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Color(0xFF2B4C59),
                    fontSize: 13.sp,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 70.w,
                ),
                Icon(
                  Icons.message_outlined,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Icon(
                  Icons.call,
                  size: 30.sp,
                )
              ],
            ),
          ),
         SizedBox(height: 20.h,), GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2(image: widget.image, text: widget.text,)));},
           child:
             Container(
                  width: 179.w,
                  height: 52.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                     child: Center(
              child: Text( 'BOOK NOW',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontFamily: 'Imprima',
                  fontWeight: FontWeight.w400,
                ),),
                     ),  ),

         )
        ],
      ),
    ));
  }
}
