import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clonecoding/model/model_movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    var like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SafeArea(
        child: ListView(children: [
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/${widget.movie.poster}'),
                        fit: BoxFit.cover)),
                child: ClipRect(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.1),
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 45, 0, 10),
                          height: 300,
                          child: Image.asset('images/${widget.movie.poster}'),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          child: const Text(
                            '99% 일치 2019 15+ 시즌 1개',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          child: Text(
                            widget.movie.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [],
                              )),
                        )
                      ],
                    )),
                  ),
                )),
              )
            ],
          ),
          // makeMenuButton(),
        ]),
      )),
    );
  }

//   makeMenuButton() {}
}
