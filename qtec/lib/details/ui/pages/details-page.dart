
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec/details/ui/pages/product_details_page.dart';

import '../../bloc/details-bloc.dart';
import '../../model/DetailsModel.dart';


class DetailsPage extends StatefulWidget {
  String? slg;
  DetailsPage(this.slg,{Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late DetailsBloc _detailsBloc;

  @override
  void initState() {
    _detailsBloc = DetailsBloc(widget.slg);
    _detailsBloc.add(GetDetailsList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('প্রোডাক্ট ডিটেইল',
            style: TextStyle(
                fontFamily: 'Baloo Da 2',
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600)),
        backgroundColor: Color(0xFFE5E5E5),
        elevation: 0,
      ),
      body: _buildListDetails(),
    );
  }

  Widget _buildListDetails() {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: BlocProvider(
        create: (_) => _detailsBloc,
        child: BlocListener<DetailsBloc, DetailsState>(
          listener: (context, state) {
            if (state is DetailsError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<DetailsBloc, DetailsState>(
            builder: (context, state) {
              if (state is DetailsInitial) {
                return _buildLoading();
              } else if (state is DetailsLoading) {
                return _buildLoading();
              } else if (state is DetailsLoaded) {
                return ProductDetailsPage(state.detailsModel,);
              } else if (state is DetailsError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }


  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
