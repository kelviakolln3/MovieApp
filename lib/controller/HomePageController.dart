import 'package:get/get.dart';
import 'package:movie_app/data/API.dart';
import 'package:movie_app/models/Genres/GenereList.dart';
import 'package:movie_app/models/Movie/Movie.dart';
import 'package:movie_app/models/Result/Result.dart';

class HomePageController extends GetxController {
  API api = API();
  RxBool loadingMovie = false.obs;
  RxBool loadingMovies = false.obs;
  Rxn<Movie> movie = Rxn<Movie>();
  RxList<Result?> similarMovies = RxList<Result?>();
  Rxn<GenereList> generes = Rxn<GenereList>();
  RxBool favorite = true.obs;
  RxInt page = 1.obs;

  @override
  void onInit() {
    super.onInit();
    getMovie();
    getSimilarMovies();
    getGenere();
  }

  getMovie() async {
    movie.value = await api.getMovie();
    loadingMovie.value = true;
  }

  getSimilarMovies() async {
    loadingMovies.value = false;
    var result = await api.getSimilarMovies(page.value);
    for (var i = 0; i < result.results!.length; i++) {
      similarMovies.add(result.results![i]!);
    }
    loadingMovies.value = true;
  }

  getGenere() async {
    generes.value = await api.getGenere();
  }

  String findGenere(List<int?>? genre_ids) {
    String genere = "";
    for (var i = 0; i < genre_ids!.length; i++) {
      for (var j = 0; j < generes.value!.genres!.length; j++) {
        if(genre_ids[i] == generes.value!.genres![j].id)
        {
          genere += genere == ""? generes.value!.genres![i].name! : ", ${generes.value!.genres![i].name!}"; 
        }
      }
    }
    return genere;
  }

  String getOnlyYear(String? date) {
    String year = "";
    var dateSplit = date!.split("-");
    year = dateSplit[0];
    return year;
  }
}
