import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/model/model_movie.dart';
import 'package:netflix_clonecoding/widget/box_slider.dart';
import 'package:netflix_clonecoding/widget/carousel_slider.dart';
import 'package:netflix_clonecoding/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [CarouselImage(movies: movies), const Top()],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies)
      ],
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            'images/bbongflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          topTab('TV 프로그램'),
          topTab('영화'),
          topTab('내가 찜한 콘텐츠'),
        ]),
      ),
    );
  }

  Container topTab(name) {
    return Container(
      padding: const EdgeInsets.only(right: 1),
      child: Text(
        name,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}
