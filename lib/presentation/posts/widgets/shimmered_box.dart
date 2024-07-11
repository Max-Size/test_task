import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeredBox extends StatelessWidget {
  final double height;

  final double width;

  final double radius;

  const ShimmeredBox({
    super.key,
    required this.height,
    required this.width,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: Colors.grey[300]!,
        ),
        height: height,
        width: width,
      ),
    );
  }
}
