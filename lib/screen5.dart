import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/Home.dart';
import 'package:untitled4/screen1.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 10.h),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 270.w,
                ),
                Icon(
                  Icons.more_vert,
                  size: 30.sp,
                )
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                width: 200.w,
                height: 178.h,
                decoration: ShapeDecoration(
                  color: Color(0x00D9D9D9),
                  shape: OvalBorder(
                    side: BorderSide(width: 3.w, color: Color(0xFF69C549)),
                  ),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 100,
                  color: Colors.green,
                ),
              ),
              Positioned(
                top: 60.h,
                left: 80.w,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 40.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Thank You',
            style: TextStyle(
              color: Color(0xFF69C549),
              fontSize: 24.sp,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: Row(
              children: [
                Text(
                  'PAYMENT MADE',
                  style: TextStyle(
                    color: Color(0xFF2B4C59),
                    fontSize: 16.sp,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 120.w,
                ),
                Text(
                  '\$650',
                  style: TextStyle(
                    color: Color(0xFF69C549),
                    fontSize: 17.sp,
                    fontFamily: 'PT Sans',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 20.h,right: 70.w),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Well done Your payment is\n Successfuly  done\nand your car is on its way.\n',
                    style: TextStyle(
                      color: Color(0xFF676767),
                      fontSize: 18.sp,
                      fontFamily: 'Red Hat Mono',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            width: 330.w,
            height: 52.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0x002B4C59),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 2.w, color: Color(0xFF2B4C59)),
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Center(
              child: Text(
                'Track',
                style: TextStyle(
                  color: Color(0xFF2B4C59),
                  fontSize: 20.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
         SizedBox(height: 30.h,), GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:  (_)=>Home()));},
           child:
             Container(
                width: 330.w,
                height: 52.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFF2B4C59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
             child: Center(
               child: Text( 'Go Back',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.sp,
                   fontFamily: 'Inconsolata',
                   fontWeight: FontWeight.w800,
                 ),),
             ), ),

         ) ],
      ),
    )));
  }
}
