import 'package:flutter/material.dart';

import '/../../src/config/text_styles.dart';
import '/../../src/constants/asset_paths.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: size.height/10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text('Find Your Best\nMovie',
                style: TextStyles.heading1SemiBold),
            CircleAvatar(
              radius: size.height/24,
              backgroundImage: const AssetImage(AssetPath.iconProfile),
            )
          ],
        ),

      ),
    );
  }
}
