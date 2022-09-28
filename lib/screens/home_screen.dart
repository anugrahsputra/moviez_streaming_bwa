import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moviez_streaming/constant.dart';
import 'package:moviez_streaming/model/movie.dart';
import 'package:moviez_streaming/screens/search_search.dart';
import 'package:moviez_streaming/widget/rating_bar_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  static const routeName = '/home';

  final List<Movie> displayList = List.from(movieList);

  final List<Movie> reversedList = List.from(movieList.reversed);

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 32,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _title(),
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Search.routeName);
                        },
                        icon: Icon(
                          Icons.search,
                          size: 28,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: displayList.length,
                  itemBuilder: (context, index, realIndex) {
                    return _buildCarousel(context, index);
                  },
                  options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    initialPage: 0,
                    height: 300,
                    aspectRatio: 2.2,
                    viewportFraction: 0.9,
                    enableInfiniteScroll: false,
                    disableCenter: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    bottom: 10,
                  ),
                  child: Text(
                    'From Disney',
                    style: TextStyle(
                        fontSize: 24, fontWeight: black, color: primaryColor),
                  ),
                ),
                SizedBox(
                  height: 320,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
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
      margin: const EdgeInsets.only(
        left: 24,
        top: 15,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              reversedList[index].poster!,
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
                reversedList[index].title!,
                style: TextStyle(
                    fontSize: 20, fontWeight: black, color: primaryColor),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                reversedList[index].genre!,
                style: TextStyle(
                  fontSize: 16,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RatingBarWidget(displayList: reversedList, index: index),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildCarousel(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(displayList[index].banner!),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 13),
                spreadRadius: -20,
                blurRadius: 27,
                color: primaryColor,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    displayList[index].title!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: extraBold,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    displayList[index].genre!,
                    style: TextStyle(
                      fontSize: 16,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
              RatingBarWidget(displayList: displayList, index: index),
            ],
          ),
        ),
      ],
    );
  }

  Column _title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Moviez',
          style:
              TextStyle(fontSize: 28, fontWeight: black, color: primaryColor),
        ),
        Text(
          'Watch much easier',
          style: TextStyle(
            fontSize: 18,
            color: secondaryColor,
          ),
        ),
      ],
    );
  }
}
