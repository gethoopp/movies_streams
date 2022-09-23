import 'package:flutter/cupertino.dart';

class movie_list {
  final String nameMovie;
  final String subname;
  final AssetImage;

  const movie_list(
      {required this.nameMovie, required this.subname, this.AssetImage});
}

final data_movie_list = [
  const movie_list(
      nameMovie: 'Batman',
      subname: 'Action, SuperHero',
      AssetImage: AssetImage('asset/images/2.jpg')),
  const movie_list(
      nameMovie: 'Dr.Strange',
      subname: 'Action, SuperHero',
      AssetImage: AssetImage('asset/images/3.jpg'))
];
