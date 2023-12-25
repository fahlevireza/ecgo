import 'package:ecgo/pages/home/components/carousel.dart';
import 'package:ecgo/pages/home/components/spec_section.dart';
import 'package:ecgo/pages/home/components/award_section.dart';
import 'package:ecgo/pages/home/components/footer.dart';
import 'package:ecgo/pages/home/components/header.dart';
import 'package:ecgo/pages/home/components/ios_app_ad.dart';
import 'package:ecgo/pages/home/components/information_stats.dart';
import 'package:ecgo/pages/home/components/location_section.dart';
import 'package:ecgo/pages/home/components/sponsors.dart';
import 'package:ecgo/pages/home/components/testimonial_widget.dart';
import 'package:ecgo/pages/home/components/android_ad.dart';
import 'package:ecgo/utils/constants.dart';
import 'package:ecgo/utils/globals.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title!,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              SpecSection(),
              IosAppAd(),
              SizedBox(
                height: 70.0,
              ),
              AndroidAd(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: InformationStats(),
              ),
              SizedBox(
                height: 50.0,
              ),
              AwardSection(),
              SizedBox(
                height: 50.0,
              ),
              LocationSection(),
              SizedBox(
                height: 50.0,
              ),
              Sponsors(),
              SizedBox(
                height: 50.0,
              ),
              TestimonialWidget(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}