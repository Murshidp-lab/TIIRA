import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled4/screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        SafeArea(
          child:
          Column(
              children: [
          Padding(
          padding: EdgeInsets.only(top: 10.h, left: 10.w),
          child: Row(
            children: [
              GestureDetector(onTap: () {
                Navigator.of(context).pop();
              },
                child:
                Icon(Icons.arrow_back_ios_new, size: 30.sp,),

              ),
              SizedBox(width: 270.w,), Icon(Icons.more_vert, size: 30.sp,)
            ],
          ),
        ),
        Image.asset("assets/k.png"),
        SizedBox(width: 300.w, height: 60.h,
          child: TextField(
              decoration: InputDecoration(
                  labelText:
                  'Phone Number:             +91 8606008836')),

        ), SizedBox(height: 60.h, width: 300.w,
        child: TextField(
            decoration: InputDecoration(
                labelText:
                'Card Number:                1234567898')),
      ), SizedBox(width: 300.w, height: 60.h,
        child: TextField(
            decoration: InputDecoration(
                labelText:
                'Expiration Date:')),
      ), SizedBox(width: 300.w, height: 60.h,
        child: TextField(
            decoration: InputDecoration(
                labelText:
                'CCV:')),
      ),
        SizedBox(height: 40.h,),GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder:  (_)=>Screen5()));},
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
             child: Text('Pay',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20.sp,
                 fontFamily: 'Inconsolata',
                 fontWeight: FontWeight.w800,
               ),),
                   ), ),

        )],
        ),

      ),

    ),);
  }
}
