import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/HomePageController.dart';
import 'package:movie_app/src/components/InfoMovie.dart';
import 'package:movie_app/src/components/SimilarMovies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homePageController = Get.put(HomePageController());
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(infiniteScrolling);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  infiniteScrolling() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
          homePageController.page.value++;
      homePageController.getSimilarMovies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(
        () => SingleChildScrollView(
          controller: _scrollController,
          child: homePageController.loadingMovie.value
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [InfoMovie(), const SimilarMovies()],
                )
              : const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
