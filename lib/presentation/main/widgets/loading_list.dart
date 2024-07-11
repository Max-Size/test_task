import 'package:flutter/material.dart';
import 'package:posts/presentation/main/widgets/shimmered_box.dart';

class LoadingPostsList extends StatelessWidget {
  const LoadingPostsList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final boxWidth = size.width * 0.9;
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      itemBuilder: (context, index) => ShimmeredBox(
        height: boxWidth / 2,
        width: boxWidth,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: 10,
    );
  }
}
