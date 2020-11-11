import 'package:flutter/material.dart';
import 'package:reviewapp/movie.dart';
import 'package:reviewapp/moviecardinlistview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Movie> moviesList = Movie.getMovies();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Movie App"),
        ),
        backgroundColor: Colors.lime[50],
        body: ListView.builder(
          itemBuilder: (BuildContext context, index) {
            return Stack(
              children: <Widget>[ movieCard(moviesList[index], context),
              Positioned(
                top: 10.0,
                child: circularImage(moviesList[index].images[0]))]);
          },
          itemCount: moviesList.length,
        ));
  }
}
