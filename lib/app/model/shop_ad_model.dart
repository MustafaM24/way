// Currently, I'm making the image type as string to fetch it from assets.
// You may have to change this type to fetch it from backend
import 'package:flutter/material.dart';

class ShopAdModel {
  final String coverImage;
  final String title;
  final String subtitle;
  final String rating;
  final String reviewCount;
  ShopAdModel(
      {required this.coverImage,
      required this.rating,
      required this.reviewCount,
      required this.subtitle,
      required this.title});
}
