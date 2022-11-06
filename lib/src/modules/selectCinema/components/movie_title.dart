import 'package:flutter/material.dart';

import '../../../config/text_styles.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, top: 8),
          child: const Text(
            'Ralph Breaks the Internet',
            style: TextStyles.heading2,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 24, top: 4),
          child: const Text(
            'FX Sudirman XXI',
            style: TextStyles.heading3Light,
          ),
        ),
      ],
    );
  }
}