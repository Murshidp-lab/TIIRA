import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.image, required this.text});

  final String image;
final String text;
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w),
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
                      width: 270.w,
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      size: 30.sp,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 200.w, top: 50.h),
                child: Text(
                  'Selected',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 160.w),
                child: Text(
                  'Needs a driver',
                  style: TextStyle(
                    color: Color(0xFF2B4C59),
                    fontSize: 16.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    widget.image,
                    height: 200.h,
                    width: 200.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h, left: 20.w),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 30.h, right: 40.w),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              color: Color(0xFF2B4C59),
                              fontSize: 11.sp,
                              fontFamily: 'PT Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, right: 70.w),
                          child: Text(
                            '\$200.00',
                            style: TextStyle(
                              color: Color(0xFFC54949),
                              fontSize: 12.sp,
                              fontFamily: 'PT Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Row(
                            children: [
                              Text(
                                'Rated:  ',
                                style: TextStyle(
                                  color: Color(0xFFC7C7C7),
                                  fontSize: 11.sp,
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: 340.w,
                height: 1.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Selected:',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Days:',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Price:',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 150.w,
                    ),
                    Text(
                      '\$600',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Row(
                  children: [
                    Text(
                      'Drivers Fee:',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 110.sp,
                    ),
                    Text(
                      '\$50',
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 340.w,
                height: 1.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 40.w),
                child: Row(
                  children: [
                    Text('TOTAL',
                        style: TextStyle(
                          color: Color(0xFF2B4C59),
                          fontSize: 13.sp,
                          fontFamily: 'PT Sans',
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      width: 180.w,
                    ),
                    Text(
                      '\$650',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.sp,
                        fontFamily: 'PT Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 190.w, top: 10.h),
                child: Text(
                  'LOCATION',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 17.sp,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 349.w,
                height: 38.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0x142B4C59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 30.sp,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Street 203   House 348  City Kigali',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5799999833106995),
                          fontSize: 13.sp,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:  (_)=>Screen3()));},
                child:
                  Container(
                    width: 330.w,
                    height: 52.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF2B4C59),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.r),
                      ),
                    ),
                    child: Center(
                      child: Text('Confirm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontFamily: 'Inconsolata',
                          fontWeight: FontWeight.w800,
                        ),),
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
