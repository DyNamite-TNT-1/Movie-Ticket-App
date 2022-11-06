import 'package:flutter/material.dart';

import 'package:movie_ticket_app/src/config/app_colors.dart';
import 'package:movie_ticket_app/src/config/text_styles.dart';

import 'components/category_bar.dart';
import 'components/coming_soon.dart';
import 'components/header.dart';
import 'components/promo.dart';
import 'components/search_bar.dart';
import 'components/slider_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size),
            //category bar
            CategoryBar(size: size),
            //title
            buildTitle('Now Playing'),
            //slider
            SliderBar(size: size),
            buildTitle('Coming Soon'),
            const ComingSoon(),
            buildTitle('Promo'),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        content,
        style: TextStyles.heading2,
      ),
    );
  }
}


