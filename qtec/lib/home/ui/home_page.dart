import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qtec/home/bloc/home_event.dart';
import 'package:qtec/home/ui/widget/home_page_loaded.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';


class HomePage extends StatefulWidget {
  static const String routeName = '/homepage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>(); //Used for opening drawer

  final HomeBloc _homeBloc = HomeBloc();



  @override
  void initState() {
    _homeBloc.add(GetHomeDataList());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: BlocProvider(
          create: (_) => _homeBloc,
          child: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is HomeError) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message!)));
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeInitial) {
                  return _buildLoading();
                } else if (state is HomeLoading) {
                  return _buildLoading();
                } else if (state is HomeLoaded) {
                  return HomePageLoaded(model: state.homeModel);
                } else if (state is HomeError) {
                  return Container();
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }


}

