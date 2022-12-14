import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/config/app_colors.dart';
import 'package:movie_ticket_app/src/modules/selectCinema/components/custom_header.dart';

import '../../config/text_styles.dart';
import '../../constants/asset_paths.dart';
import '../../widgets/star_component.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeader(
              content: 'Checkout\nMovie',
              size: size,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                //color: Colors.red,
                border: Border(
                  bottom: BorderSide(
                    color: DarkTheme.white,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: size.width / 2.5,
                    child: Image.asset(
                      AssetPath.posterRalphx2,
                      scale: 1.2,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  MovieInfoWidget(size: size),
                ],
              ),
            ),
            buildPriceTag('ID Order', '22081996'),
            buildPriceTag('Cinema', 'FX Sudirman XXI'),
            buildPriceTag('Date & Time', 'Sun May 22,   16:40'),
            buildPriceTag('Seat Number', 'D7, D8, D9'),
            buildPriceTag('Price', 'Rp 50.000 VND x 3'),
            buildPriceTag('Total', 'Rp 150.000'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(bottom: 8),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: DarkTheme.white,
                    width: 1,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Wallet',
                    style: TextStyles.heading4Light,
                  ),
                  Text(
                    '200.000 VND',
                    style:
                        TextStyles.heading4.copyWith(color: GradientPalette.lightBlue1),
                  ),
                ],
              ),
            ),
            Expanded(child: Center(
              child: Container(
                height: size.height / 12,
                width: size.width / 2,
                decoration: BoxDecoration(
                  color: DarkTheme.blueMain,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text('Check Out', style: TextStyles.heading3,),
              ),
            ),)
          ],
        ),
      ),
    );
  }

  Container buildPriceTag(String content, String price) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TextStyles.heading4Light,
          ),
          Text(
            price,
            style: TextStyles.heading4,
          ),
        ],
      ),
    );
  }
}

class MovieInfoWidget extends StatelessWidget {
  const MovieInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            width: size.width,
            child: const Text(
              'Ralph Break The Internet',
              style: TextStyles.heading3Medium,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8, bottom: 8),
            child: Row(
              children: const [
                StarComponent(),
                StarComponent(),
                StarComponent(),
                StarComponent(),
                StarComponent(),
                Text(
                  '(5,0)',
                  style: TextStyles.heading4,
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            width: size.width,
            child: const Text(
              'Action & adventure, Comedy',
              style: TextStyles.heading4Light,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            width: size.width,
            child: const Text(
              '1h41min',
              style: TextStyles.heading4Light,
            ),
          ),
        ],
      ),
    );
  }
}
