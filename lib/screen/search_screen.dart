import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  late String _searchText = '';

  _SearchScreenState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          focusNode.unfocus();
        });
      },
      child: Container(
        child: Column(children: [
          const Padding(padding: EdgeInsets.all(30)),
          Container(
              color: Colors.black,
              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Row(children: [
                Expanded(
                    flex: 6,
                    child: TextField(
                        focusNode: focusNode,
                        style: const TextStyle(fontSize: 15),
                        autofocus: true,
                        controller: _filter,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white12,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white60,
                            size: 20,
                          ),
                          suffixIcon: focusNode.hasFocus
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.cancel,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _filter.clear();
                                      _searchText = '';
                                    });
                                  },
                                )
                              : Container(),
                          hintText: '검색',
                          labelStyle: const TextStyle(color: Colors.white),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ))),
                focusNode.hasFocus
                    ? Expanded(
                        child: TextButton(
                        child: const Text('취소'),
                        onPressed: () {
                          setState(() {
                            _filter.clear();
                            _searchText = '';
                            focusNode.unfocus();
                          });
                        },
                      ))
                    : Expanded(
                        flex: 0,
                        child: Container(),
                      )
              ]))
        ]),
      ),
    );
  }
}
