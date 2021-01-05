import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:todoin/pages/detail_page/info_section.dart';
import 'package:todoin/pages/detail_page/location_section.dart';
import 'package:todoin/pages/detail_page/officehour_section.dart';

final images = [
  'https://image.freepik.com/free-vector/flat-design-content-marketing-system-illustration_5379-124.jpg',
  'https://huddle.eurostarsoftwaretesting.com/wp-content/uploads/2018/04/free-flat-design-digital-marketing-concep-vector.jpg',
  'https://static.vecteezy.com/system/resources/previews/000/103/286/non_2x/free-flat-design-vector-background.jpg',
];

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final swiperHeight = (MediaQuery.of(context).size.height / 2) - 50;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: swiperHeight,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                pagination:
                    new SwiperPagination(alignment: Alignment.bottomCenter),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
              margin: EdgeInsets.only(top: swiperHeight - 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                children: [
                  InfoSection(),
                  Divider(),
                  OfficeHourSection(),
                  Divider(),
                  LocationSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
