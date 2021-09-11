import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tda_academy/bloc/utility/utility_bloc.dart';
import 'package:tda_academy/models/utility/UtilityMaster.dart';
import 'package:tda_academy/screens/loading_ui.dart';

class OfferCrousel extends StatefulWidget {
  @override
  _OfferCrouselState createState() => _OfferCrouselState();
}

class _OfferCrouselState extends State<OfferCrousel> {
  UtilityBloc _utilityBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _utilityBloc = UtilityBloc()..add(UtilityLoadingEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => _utilityBloc,
        ),
      ],
      child: Container(
        margin: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 0.0),
        child: SizedBox(
          height: 170.0,
          width: MediaQuery.of(context).size.width,
          child: BlocBuilder<UtilityBloc, UtilityState>(
            cubit: _utilityBloc,
            builder: (context, state) {
              if (state is UtilityLoading) {
                print("rendering body");
                return LoadingUi();
              } else if (state is UtilityLoaded) {
                return getCrousels(state.utilityMaster);
              } else {
                return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget getCrousels(UtilityMaster utilityMaster) {
    return Carousel(
      images: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.network(
              utilityMaster.image1,
              height: 170.0,
              width: MediaQuery.of(context).size.width / 1.00,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.network(
              utilityMaster.image2,
              height: 170.0,
              width: MediaQuery.of(context).size.width / 1.00,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.network(
              utilityMaster.image3,
              height: 170.0,
              width: MediaQuery.of(context).size.width / 1.00,
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.network(
              utilityMaster.image4,
              height: 170.0,
              width: MediaQuery.of(context).size.width / 1.00,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
      dotSize: 6.0,
      dotSpacing: 18.0,
      dotColor: Color(0xFFD0EBE9),
      indicatorBgPadding: 10.0,
      dotBgColor: Colors.blueGrey.withOpacity(0.0),
      borderRadius: false,
      animationDuration: Duration(milliseconds: 900),
      autoplayDuration: Duration(seconds: 3),
      dotIncreaseSize: 1.5,
    );
  }
}
