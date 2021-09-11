import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:tda_academy/screens/loading_ui.dart';
import 'package:tda_academy/utils/constants.dart';

class CircularImage extends StatelessWidget {
  final double radius;
  final double width;
  final double height;
  final String imageUrl;
  final Color color;

  const CircularImage(
      {Key key,
      this.radius,
      this.width,
      this.height,
      this.imageUrl,
      this.color})
      : assert(imageUrl != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, imageProvider) => Container(
          height: width,
          width: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => LoadingUi(),
        errorWidget: (context, url, error) => Container(
          height: width,
          width: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            image: DecorationImage(
              image: AssetImage(def_img),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
