import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/model/model_movie.dart';
import 'package:netflix_clonecoding/screen/detail_screen.dart';

class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  const CarouselImage({super.key, required this.movies});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((e) => Image.asset('./images/${e.poster}')).toList();
    keywords = movies.map((e) => e.keyword).toList();
    likes = movies.map((e) => e.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
        ),
        CarouselSlider(
          items: images,
          options: CarouselOptions(onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
              _currentKeyword = keywords[_currentPage];
            });
          }),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 3),
          child: Text(
            _currentKeyword,
            style: const TextStyle(fontSize: 11),
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(children: [
                  likes[_currentPage]
                      ? IconButton(
                          onPressed: () {}, icon: const Icon(Icons.check))
                      : IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)),
                  const Text(
                    '?????? ?????? ?????????',
                    style: TextStyle(fontSize: 11),
                  )
                ]),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Row(children: const [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    Padding(padding: EdgeInsets.all(2)),
                    Text(
                      '??????',
                      style: TextStyle(color: Colors.black),
                    )
                  ]),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: Column(children: [
                  IconButton(
                    icon: const Icon(Icons.info),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        fullscreenDialog: true,
                        builder: (BuildContext context) {
                          return DetailScreen(movie: movies[_currentPage]);
                        },
                      ));
                    },
                  ),
                  const Text(
                    '??????',
                    style: TextStyle(fontSize: 11),
                  )
                ]),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: makeIndicator(likes, _currentPage),
          ),
        )
      ]),
    );
  }
}

List<Widget> makeIndicator(List list, int currentPage) {
  List<Widget> results = [];
  for (var i = 0; i < list.length; i++) {
    results.add(Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == i
              ? const Color.fromRGBO(255, 255, 255, 0.9)
              : const Color.fromRGBO(255, 255, 255, 0.4)),
    ));
  }
  return results;
}
