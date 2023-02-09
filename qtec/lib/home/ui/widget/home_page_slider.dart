import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class HomePageSlider extends StatefulWidget {
  String title;
  String img;
  num currentCharge;
  num sellingPrice;
  num profit;

  HomePageSlider({
    required this.title,
    required this.img,
    required this.currentCharge,
    required this.profit,
    required this.sellingPrice,
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<HomePageSlider> createState() => _HomePageSliderState();
}

class _HomePageSliderState extends State<HomePageSlider> {
  bool favourite = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 267.h,
          width: 164.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Center(
                    child: Container(
                      height: 148.h,
                      width: 148.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        child: Image.network(
                          widget.img,
                          fit: BoxFit.fitHeight,
                          height: 117,
                          width: 87,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              //product name
              SizedBox(
                height: 40.h,
                width: 152.w,
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontFamily: customFont,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff323232)),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ক্রয়',
                          style: TextStyle(
                              fontFamily: customFont,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646464))),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                          "$currencySymbol" + widget.currentCharge.toString(),
                          style: TextStyle(
                            fontFamily: customFont,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffDA2079),))
                    ],
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text("$currencySymbol" + widget.currentCharge.toString(),
                      style: TextStyle(
                          fontFamily: customFont,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffDA2079),
                          decoration: TextDecoration.lineThrough))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('বিক্রয়',
                          style: TextStyle(
                              fontFamily: customFont,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646464))),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text("$currencySymbol" + widget.sellingPrice.toString(),
                          style: TextStyle(
                              fontFamily: customFont,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff646464)))
                    ],
                  ),
                  Row(
                    children: [
                      Text('লাভ',
                          style: TextStyle(
                              fontFamily: customFont,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff646464))),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text("$currencySymbol" + widget.profit.toString(),
                          style: TextStyle(
                              fontFamily: customFont,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff646464)))
                    ],
                  ),
                ],
              ),

              SizedBox(height: 25.h,)
            ],
          ),
        ),
      ),
    );
  }
}
