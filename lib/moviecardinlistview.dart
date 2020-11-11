//firstpagedataaccess where the tile and card show
  import 'package:flutter/material.dart';

import 'movie.dart';
import 'SecondPageHomeScreen/secondpage.dart';

Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        height: 120.0,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.lime[100],
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          movie.title,
                          style: TextStyle(color: Colors.black, fontSize: 19),
                        )),
                        Text(
                          "Rating: ${movie.imdbRating}/10",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("Released: ${movie.released}",
                          style: TextStyle(color: Colors.black)),
                      Text(movie.runtime,
                          style: TextStyle(color: Colors.black)),
                      Text(movie.rated, style: TextStyle(color: Colors.black))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Newpage(
                infromation: movie.title,
                movie: movie,
              ),
            ))
      },
    );
  }
  //to make circle of the image

  Widget circularImage(String imageurl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          )),
    );
  }
