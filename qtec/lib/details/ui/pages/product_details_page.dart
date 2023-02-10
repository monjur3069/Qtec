import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:qtec/details/model/DetailsModel.dart';


class ProductDetailsPage extends StatefulWidget {
  static const String routeName = '/detailsPage';
  DetailsModel model;
  ProductDetailsPage(this.model, {Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final searchController = TextEditingController();
  int currentPos = 0;


  List<String> imgList = ['images/img.png', 'images/img.png', 'images/img.png'];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                    hintStyle: TextStyle(
                        fontFamily: 'Baloo Da 2',
                        color: Color(0xFF989898),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xFFA7A7A7),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
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
            SizedBox(
              height: 32,
            ),
            CarouselSlider.builder(
              itemCount: widget.model!.data!.images!.length,
              options: CarouselOptions(
                  viewportFraction: 0.6,
                  aspectRatio: 16 / 10,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, realIndex) {
                return Image.network(
                  widget.model!.data!.images![index].image!,
                  height: 308,
                  width: 248,
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.model.data!.productName!,
                            style: TextStyle(
                                fontFamily: 'Baloo Da 2',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              'ব্রান্ডঃ ${widget.model.data!.brand!.name!}',
                              style: TextStyle(
                                  fontFamily: 'Baloo Da 2',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFDA2079),
                              radius: 3,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'ডিস্ট্রিবিউটরঃ ${widget.model.data!.distributors!}',
                              style: TextStyle(
                                  fontFamily: 'Baloo Da 2',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      title: Text('ক্রয়মূল্যঃ',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Color(0xFFDA2079),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                      trailing: Text('৳ ${widget.model!.data!.charge!.currentCharge!}',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Color(0xFFDA2079),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      title: Text('বিক্রয়মূল্যঃ',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                      trailing: Text('৳ ${widget.model!.data!.charge!.sellingPrice}',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Container(
                                      decoration: DottedDecoration(),
                                    ),
                                    ListTile(
                                      dense: true,
                                      contentPadding: EdgeInsets.zero,
                                      title: Text('লাভঃ',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500)),
                                      trailing: Text('৳ ${widget.model!.data!.charge!.profit!}',
                                          style: TextStyle(
                                              fontFamily: 'Baloo Da 2',
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        SizedBox(height: 32,),
                        Text('বিস্তারিত',
                            style: TextStyle(
                                fontFamily: 'Baloo Da 2',
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                        SizedBox(height: 16,),
                        Html(
                          data: widget.model!.data!.description!,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: MediaQuery.of(context).size.width*.3,
                    top: 240,
                    child: InkWell(
                      // onTap:() => Navigator.pushNamed(context, ProductPage.routeName),
                      onTap: (){},
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/img_1.png',
                            height: 90,
                            width: 90,
                          ),
                          Positioned(
                            top: 25,
                            left: 25,
                            child: Column(
                              children: [
                                Text('এটি',
                                    style: TextStyle(
                                        fontFamily: 'Baloo Da 2',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                                Text('কিনুন',
                                    style: TextStyle(
                                        fontFamily: 'Baloo Da 2',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
