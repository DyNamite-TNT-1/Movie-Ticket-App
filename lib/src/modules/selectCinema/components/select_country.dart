import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/text_styles.dart';
import '../../../constants/asset_paths.dart';

class SelectCountryWidget extends StatelessWidget {
  const SelectCountryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      height: size.height / 14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: DarkTheme.white),
      ),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Select Your Country',
                hintStyle: TextStyles.heading3Light,
                icon: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ImageIcon(
                    AssetImage(AssetPath.iconLocation),
                    color: DarkTheme.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: DarkTheme.white,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}