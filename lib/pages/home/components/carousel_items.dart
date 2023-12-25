import 'package:ecgo/models/carousel_item_model.dart';
import 'package:ecgo/pages/home/components/carousel_image.dart';
import 'package:flutter/material.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) {
    if (index == 0) {
      return CarouselItemModel(
        text: CarouselText(
          title: "SPECIAL PRICE",
          subtitle: "ECGO EVmoto\nECGO 3",
        ),
        image: Container(
          child: Image.asset(
            "assets/ecgo3.png",
            fit: BoxFit.contain,
          ),
        ),
      );
    } else if (index == 1) {
      return CarouselItemModel(
        text: CarouselText(
          title: "SPECIAL PRICE",
          subtitle: "ECGO EVmoto\nECGO 3",
        ),
        image: Container(
          child: Image.asset(
            "assets/ecgo1.png",
            fit: BoxFit.contain,
          ),
        ),
      );
    } else if (index == 2) {
      return CarouselItemModel(
        text: CarouselText(
          title: "SPECIAL PRICE",
          subtitle: "ECGO EVmoto\nECGO 3",
        ),
        image: Container(
          child: Image.asset(
            "assets/ecgo2.png",
            fit: BoxFit.contain,
          ),
        ),
      );
    } else if (index == 3) {
      return CarouselItemModel(
        text: CarouselText(
          title: "SPECIAL PRICE",
          subtitle: "ECGO EVmoto\nECGO 3",
        ),
        image: Container(
          child: Image.asset(
            "assets/ecgo3.png",
            fit: BoxFit.contain,
          ),
        ),
      );
    } else {
      return CarouselItemModel(
        text: CarouselText(
          title: "SPECIAL PRICE",
          subtitle: "ECGO EVmoto\nECGO 3",
        ),
        image: Container(
          child: Image.asset(
            "assets/ecgo5.png",
            fit: BoxFit.contain,
          ),
        ),
      );
    }
  },
);
