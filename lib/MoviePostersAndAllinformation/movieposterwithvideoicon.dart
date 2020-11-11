//big image to show like the video icon on it

import 'package:flutter/material.dart';
import 'package:reviewapp/movie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Stack(alignment: Alignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 170,
          child: Youtube(video: thumbnail,),
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: NetworkImage(thumbnail), fit: BoxFit.cover)),
        // ),
        // Icon(
        //   Icons.play_arrow,
        //   size: 150,
        //   color: Colors.white54,
        // ),
      )
    ])]);
  }
}

class MovieDetailHeaderWithPoster extends StatelessWidget {
  final Movie movie;

  const MovieDetailHeaderWithPoster({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          MoviePoster(poster: movie.images[0].toString()),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: MoviedetailHeader(movie: movie),
          )
        ],
      ),
    );
  }
}

class MoviedetailHeader extends StatelessWidget {
  final Movie movie;

  const MoviedetailHeader({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[Text('${movie.year}.${movie.genre}'.toUpperCase(),
      style: TextStyle(color: Colors.black),),
      Text(movie.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
      Text.rich(TextSpan(style: TextStyle(fontSize: 12,color: Colors.black,
      ),children: [
        TextSpan(
          text: movie.plot
        )

      ]))
      ],
    );
  }
}

class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(poster), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
class Youtube extends StatefulWidget {
  final String video;

  const Youtube({Key key, this.video}) : super(key: key);

  @override
  _YoutubeState createState() => _YoutubeState(video);
}

class _YoutubeState extends State<Youtube> {
  final String videos;

  _YoutubeState(this.videos);
YoutubePlayerController _controller;
@override
  void initState() {
    // ignore: todo
    // TODO: implement initState
  _controller=YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(videos),
      flags: YoutubePlayerFlags(
          autoPlay: false
          ,
      mute: false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: YoutubePlayer(controller: _controller,),
    );
  }
}
