import 'package:flutter/material.dart';
import 'package:moviez_streaming/constant.dart';
import 'package:moviez_streaming/model/movie.dart';
import 'package:moviez_streaming/widget/rating_bar_widget.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  static const routeName = '/search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Movie> displayedList = List.from(movieList);

  void _updateList(String value) {
    setState(() {
      displayedList = movieList
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffFBFBFD),
            Color(0xffF0F1F6),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  onChanged: (value) => _updateList(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'eg: Jujutsu Kaisen',
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      'Search Result ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: extraBold,
                        color: primaryColor,
                      ),
                    ),
                    Text(
                      '(${displayedList.length})',
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: displayedList.isEmpty
                      ? Center(
                          child: Text(
                            'Couldn\'t find anything :(',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: black,
                              color: primaryColor,
                            ),
                          ),
                        )
                      : ListView.builder(
                          itemCount: displayedList.length,
                          itemBuilder: (context, index) {
                            return _buildList(index);
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildList(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              displayedList[index].poster!,
              width: 100,
              height: 125.6,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                displayedList[index].title!,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: black,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                displayedList[index].genre!,
                style: TextStyle(fontSize: 14, color: secondaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              RatingBarWidget(displayList: displayedList, index: index),
            ],
          ),
        ],
      ),
    );
  }
}
