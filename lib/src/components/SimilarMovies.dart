import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controller/HomePageController.dart';

class SimilarMovies extends StatelessWidget {
  const SimilarMovies({super.key});
  @override
  Widget build(BuildContext context) {
    final homePageController = Get.find<HomePageController>();
    return Obx(() => Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: homePageController.similarMovies.length,
            itemBuilder: ((BuildContext context, int index) {
              return Card(
                child: Container(
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: homePageController
                                        .similarMovies[index]!.poster_path ==
                                    null
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Container(
                                      height: 100,
                                      width: 80,
                                      color: Colors.grey,
                                      child: const Center(
                                          child: Text(
                                        "Sem imagem",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    ),
                                  )
                                : Image.network(
                                    "https://image.tmdb.org/t/p/original/${homePageController.similarMovies[index]!.poster_path}",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                homePageController.similarMovies[index]!.title!,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 17),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${homePageController.getOnlyYear(homePageController.similarMovies[index]!.release_date)} ${homePageController.findGenere(homePageController.similarMovies[index]!.genre_ids)}",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 17),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              );
            }),
          ),
        ));
  }
}
