import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/HomePageController.dart';

class InfoMovie extends StatelessWidget {
  final homePageController = Get.find<HomePageController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "https://image.tmdb.org/t/p/original/${homePageController.movie.value!.poster_path}",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.8,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  homePageController.movie.value!.title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Obx(() => IconButton(
                  onPressed: () => homePageController.favorite.value =
                      !homePageController.favorite.value,
                  icon: Icon(
                    homePageController.favorite.value
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: Colors.white,
                  ))),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.favorite, color: Colors.white, size: 16),
                    Text(" ${homePageController.movie.value!.vote_count} Likes",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16))
                  ],
                ),
                const SizedBox(width: 50),
                Row(
                  children: [
                    const RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.contrast,
                          size: 16,
                          color: Colors.white,
                        )),
                    Text(" ${homePageController.movie.value!.popularity} view",
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
