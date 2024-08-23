import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30.sp,
                      ),
                    ),
                    SizedBox(
                      width: 280.w,
                    ),
                    Icon(
                      Icons.more_vert,
                      size: 30.sp,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 140.w, top: 50.h),
                child: Text(
                  'Payment Methods',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/f.png",
                          height: 90.h,
                          width: 100.w,
                        ),
                        Image.asset(
                          "assets/g.png",
                          height: 90.h,
                          width: 90.w,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset(
                      "assets/h.png",
                      height: 100.h,
                      width: 100.w,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Image.asset(
                            "assets/i.png",
                            height: 100.h,
                            width: 100.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, left: 48.w),
                          child: Image.asset(
                            "assets/j.png",
                            height: 40.h,
                            width: 40.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 20.w),
                child: Row(
                  children: [
                    Text(
                      'OUR CODE',
                      style: TextStyle(
                        color: Color(0xFF2B4C59),
                        fontSize: 15.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Text(
                      '1001110',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 15.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200.h,
                width: 300.w,
                child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                            labelText:
                                'Sim Name:                      murshid')),
                    TextField(
                        decoration: InputDecoration(
                            labelText:
                                'Phone Number:             +91 8606008836')),
                    TextField(
                        decoration:
                            InputDecoration(labelText: 'Rememer This Info:')),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:  (_)=>Screen4()));},
                child:
                  Container(
                    width: 349.w,
                    height: 52.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF2B4C59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Pay',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
