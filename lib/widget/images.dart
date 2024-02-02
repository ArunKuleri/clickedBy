import 'dart:io';

import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final String image;
  const Images({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(""),
    );
  }
}
