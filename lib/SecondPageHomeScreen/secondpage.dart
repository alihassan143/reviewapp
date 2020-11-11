//
//second page main where appbar and all data is entered
import 'package:flutter/material.dart';
import 'package:reviewapp/MoviePostersAndAllinformation/moremovieposters.dart';
import 'package:reviewapp/MoviePostersAndAllinformation/movie_cast_director_awards.dart';
import 'package:reviewapp/MoviePostersAndAllinformation/movieposterwithvideoicon.dart';
import '../movie.dart';


class Newpage extends StatelessWidget {
  final String infromation;
  final Movie movie;

  const Newpage({Key key, this.infromation, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Movie App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.lime[50],
        body: ListView(
          children: <Widget>[
            MovieThumbnail(
              thumbnail: movie.url,
            ),
            MovieDetailHeaderWithPoster(
              movie: movie,
            ),
            Divider(
              color: Colors.black,
            ),
            Moviecast(
              movie: movie,
            ),
            Divider(color: Colors.black),
            Moviemoreposterimages(
              moreimages:movie.images,
            )
          ],
        ));
  }
}