import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qtec/home/model/home_model/HomeModel.dart';

class HomePageLoaded extends StatelessWidget {

  HomeModel model;

  HomePageLoaded({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 5.w),
      child: ListView.builder(
        itemCount: model.data!.products!.results!.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(model.data!.products!.results![index].productName!),
              SizedBox(height: 5.h,)
            ],
          );
        },
      ),
    );
  }
}
