// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:barbershop/service/utils.dart';
import 'package:flutter/material.dart';

class PageWithBackground extends StatelessWidget {
  PageWithBackground(
      {super.key,
      required this.child,
      required this.assetImagePath,
      required this.imageopacity});
  final Widget child;
  final String assetImagePath;
  final double imageopacity;
  Utils utils = Utils();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: utils.getDeviceHeight(context),
      width: utils.getDeviceWidth(context),
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(assetImagePath),
            fit: BoxFit.cover,
            opacity: imageopacity),
      ),
      child: Center(child: SingleChildScrollView(child: child)),
    );
  }
}
