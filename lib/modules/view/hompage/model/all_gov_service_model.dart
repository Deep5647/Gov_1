import 'package:flutter/cupertino.dart';

class GovServiceData {
  String name;
  String image;
  String link;

  GovServiceData({
    required this.name,
    required this.image,
    required this.link,
  });
}


class Bookmark {
  String title;
  String url;

  Bookmark({required this.title, required this.url});
}


class TextControllerModal{
  TextEditingController titleTxt = TextEditingController();
  TextControllerModal({required this.titleTxt});
}