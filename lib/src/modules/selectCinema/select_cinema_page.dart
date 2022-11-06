import 'package:flutter/material.dart';
import 'package:movie_ticket_app/src/constants/asset_paths.dart';
import 'package:movie_ticket_app/src/models/movie.dart';
import 'package:movie_ticket_app/src/modules/selectCinema/select_seat_page.dart';

import '../../config/app_colors.dart';
import '../../config/text_styles.dart';
import 'components/custom_header.dart';
import 'components/next_button.dart';
import 'components/select_country.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomHeader(
                size: size,
                content: 'Ralph Breaks the\nInternet',
              ),
              SelectCountryWidget(size: size),
              buildTitle('Choose Date'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: days
                      .map((e) => Builder(
                            builder: (context) => _buildDateWidget(size, e),
                          ))
                      .toList(),
                ),
              ),
              buildTitle('Central Park CGV'),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                height: size.height / 15,
                child: ListView.builder(
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _buildTimeWidget(size, index, timeStates_1),
                ),
              ),
              buildTitle('FX Suridan XXI'),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                height: size.height / 15,
                child: ListView.builder(
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _buildTimeWidget(size, index, timeStates_2),
                ),
              ),
              buildTitle('Kelepa Gading IMAX'),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                height: size.height / 15,
                child: ListView.builder(
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _buildTimeWidget(size, index, timeStates_3),
                ),
              ),
              NextButton(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> SelectSeatPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildDateWidget(Size size, String e) {
    return Container(
      height: size.height / 9,
      width: size.width / 5,
      decoration: BoxDecoration(
        color: _getColor(dateStates[days.indexOf(e)]),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            e,
            style: TextStyles.heading3Medium,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              (20 + days.indexOf(e)).toString(),
              style: TextStyles.heading3Medium,
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTimeWidget(Size size, int index, List <TicketStates> states) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      width: size.width / 4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _getColor(states[index]),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        times[index],
        style: TextStyles.heading3Medium,
      ),
    );
  }

  Color _getColor(TicketStates state) {
    switch (state) {
      case TicketStates.idle:
        return DarkTheme.darkBackground;
      case TicketStates.active:
        return DarkTheme.blueMain;
      case TicketStates.busy:
        return DarkTheme.greyBackground;
    }
  }

  Container buildTitle(String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(
        content,
        style: TextStyles.heading2,
      ),
    );
  }
}






