
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/application/model/movie_model.dart';

class MovieServies {
  static const _apikey = '96f560a556cfc8bf08b66324fe6490a6';

  static const _baseurl = 'https://api.themoviedb.org/3/movie/';

  static const _nowplaying =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$_apikey';

  static const _popular =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=$_apikey';

  static const _upcoming =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=$_apikey';

  static Future<List<Movie>> getNowplayingMovies() async {
    const int maxRetries = 3;
    int retrayCount = 0;

    while (retrayCount < maxRetries) {
      try {
        final response = await http.get(Uri.parse(_nowplaying));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['results'];

          return data
              .map((json) => Movie.fromJson(json))
              .toList();
              
        }
      } catch (e) {
        if (kDebugMode) {
          print('Error fetching now playing movies:$e');
        }
      }
      retrayCount++;
    }
    return [];
  }

  static Future<List<Movie>> getpopularMovies() async {
    int maxRetries = 3;
    int retraycount = 0;

    while (retraycount < maxRetries) {
      try {
        final response = await http.get(Uri.parse(_popular));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['results'];
          return data
              .map((json) => Movie.fromJson(json))
              .toList();
              
        }
      } catch (e) {
          if (kDebugMode) {
          print('Error fetching now playing movies:$e');
        }
      }
      retraycount++;
    }
    return [];
  }

    static Future<List<Movie>> getUpcomingMovies() async {
    int maxRetries = 3;
    int retraycount = 0;

    while (retraycount < maxRetries) {
      try {
        final response = await http.get(Uri.parse(_upcoming));
        if (response.statusCode == 200) {
          final List<dynamic> data = jsonDecode(response.body)['results'];
          return data
              .map((json) => Movie.fromJson(json))
              .toList();
              
        }
      } catch (e) {
          if (kDebugMode) {
          print('Error fetching now playing movies:$e');
        }
      }
      retraycount++;
    }
    return [];
  }


}
