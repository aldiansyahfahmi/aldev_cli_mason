import '/shared_libraries/utils/resources/assets.gen.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Assets.images.icons.global.empty.svg(),
    );
  }
}
