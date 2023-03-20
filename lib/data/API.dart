import 'dart:convert';
import 'package:http/http.dart';
import 'package:movie_app/models/Genres/GenereList.dart';
import 'package:movie_app/models/Movie/Movie.dart';
import 'package:movie_app/models/Result/Result.dart';
import 'package:movie_app/models/SimilarMovies/SimilarMovies.dart';

class API {
  String apiKey = "4d7583308b05428313005b741d0c01ff";

  Future<Movie> getMovie() async {
    String url = "https://api.themoviedb.org/3/movie/545611?api_key=$apiKey&language=pt-BR";
    Response res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      var result = Movie.fromJson(body);
      return result;
    } else {
      throw "Erro ao buscar o filme";
    }
  }

  Future<SimilarMovies> getSimilarMovies(int page) async {
    String url = "https://api.themoviedb.org/3/movie/545611/similar?api_key=$apiKey&language=pt-BR&page=$page";
    Response res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      var result = SimilarMovies.fromJson(body);
      return result;
    } else {
      throw "Erro ao buscar os filmes";
    }
  }

  Future<GenereList> getGenere() async{
    String url = "https://api.themoviedb.org/3/genre/movie/list?api_key=$apiKey&language=pt-BR";
    Response res = await get(Uri.parse(url));
    if (res.statusCode == 200) {
      var body = jsonDecode(res.body);
      var result = GenereList.fromJson(body);
      return result;
    } else {
      throw "Erro ao buscar os gêneros";
    }
  }
}
