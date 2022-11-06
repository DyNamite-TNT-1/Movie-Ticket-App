import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../constants/asset_paths.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onTap;
  const NextButton({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: ElevatedButton(
        onPressed: onTap,
        child: const ImageIcon(
          AssetImage(AssetPath.iconNext),
          color: DarkTheme.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(12),
          primary: DarkTheme.blueMain,
        ),
      ),
    );
  }
}