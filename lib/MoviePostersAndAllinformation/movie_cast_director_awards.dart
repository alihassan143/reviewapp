

//addng moviecast dircectr and extra
import 'package:flutter/material.dart';

import '../movie.dart';

class Moviecast extends StatelessWidget {
  final Movie movie;

  const Moviecast({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          MovieActor(actor: movie.actors),
          MovieDirector(director: movie.director),
          MovieAwards(awards: movie.awards),
        ],
      ),
    );
  }
}

class MovieActor extends StatelessWidget {
  final String actor;

  const MovieActor({Key key, this.actor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Actor : ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Flexible(
                  child: Text(actor,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      )))
            ],
          )
        ]);
  }
}

class MovieDirector extends StatelessWidget {
  final String director;

  const MovieDirector({Key key, this.director}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Director : ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Flexible(
                  child: Text(director,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      )))
            ],
          ),
        ]);
  }
}

class MovieAwards extends StatelessWidget {
  final String awards;

  const MovieAwards({Key key, this.awards}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Awards : ',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
              Flexible(
                  child: Text(awards,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      )))
            ],
          )
        ]);
  }
}
