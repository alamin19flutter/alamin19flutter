import 'package:flutter/cupertino.dart';

class PostModel{


  PostModel(
  {
    @required this.username,
    @required this.caption,
    @required this.address,
    @required this.imageURl,
    @required this.userImageURL,
    @required this.likes,
}
      );

  String imageURl = "";
  String address = "";
  String caption = "";
  String username = "";
  String userImageURL = "";
  int likes=0;
}