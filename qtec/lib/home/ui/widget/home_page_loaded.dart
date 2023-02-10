import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qtec/home/model/home_model/HomeModel.dart';
import 'package:qtec/home/ui/widget/home_page_slider.dart';

import '../../../constants.dart';
import '../../../details/ui/pages/product_details_page.dart';


class HomePageLoaded extends StatefulWidget {
  HomeModel model;

  HomePageLoaded({Key? key, required this.model}) : super(key: key);

  @override
  State<HomePageLoaded> createState() => _HomePageLoadedState();
}

class _HomePageLoadedState extends State<HomePageLoaded> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0.w, right: 5.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                    hintStyle: TextStyle(
                        fontFamily: customFont,
                        color: Color(0xFF989898),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFA7A7A7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(8),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.6),
                itemCount: widget.model.data!.products!.results!.length,
                itemBuilder: (context, index) {
                  var stk =
                  widget.model.data!.products!.results![index].stock!;
                  var slg =
                  widget.model.data!.products!.results![index].slug!;

                  return InkWell(
                    onTap: () =>
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ProductDetailsPage(slg: slg,))),
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              HomePageSlider(
                                title: widget.model.data!.products!
                                    .results![index]
                                    .productName!,
                                img: widget
                                    .model.data!.products!.results![index]
                                    .image!,
                                currentCharge: widget.model.data!.products!
                                    .results![index].charge!.currentCharge!,
                                sellingPrice: widget.model.data!.products!
                                    .results![index].charge!.sellingPrice!,
                                profit: widget.model.data!.products!
                                    .results![index]
                                    .charge!.profit!,
                              ),
                              Positioned(
                                  bottom: -20,
                                  left: 0,
                                  right: 0,
                                  child: stk != 0
                                      ? FloatingActionButton(
                                    onPressed: () {},
                                    child: Icon(Icons.add),
                                    elevation: 0,
                                  )
                                      : Text("")),
                              Positioned(
                                top: 6,
                                right: 15,
                                child: Container(
                                  height: 20.h,
                                  width: 65.w,
                                  decoration: BoxDecoration(
                                      color: stk != 0
                                          ? Colors.transparent
                                          : Color(0xffFFCCCC),
                                      borderRadius: BorderRadius.circular(5.r)),
                                  child: Center(
                                    child: stk != 0
                                        ? Text(
                                      "",
                                    )
                                        : Text(
                                      "স্টকে নেই",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffC62828)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.h)
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
