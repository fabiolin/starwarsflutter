import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../presentation/model/film_model.dart';
import '../errors/failure.dart';

class Repository {
  final String _baseUrl = 'https://76b3d0a2b5b4.ngrok.io/';

  Future<Either<Failure, List<Film>>> films() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl + 'Film'));
      print(response.statusCode);
      if (response.statusCode == 200) {
        return Right(FilmsList.fromJson(jsonDecode(response.body)).filmsList);
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure(
          // title: e.response?.statusCode,
          message: e.response));
    }

    return Right([]);
  }

  Future<Either<Failure, bool>> insertFilm(Film film) async {
    try {
      var _headers = new Map<String, String>();
      _headers['accept'] = "application/json;charset=utf-8";

      final response = await http.post(Uri.parse(_baseUrl + 'Film'),
          body: jsonEncode(film.toJson()), headers: _headers);
      print('veio2');
      print(response.statusCode);
      if (response.statusCode == 200) {
        return Right(true);
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure(
          // title: e.response?.statusCode,
          message: e.response));
    }

    return Right(false);
  }

  Future<Either<Failure, bool>> deleteFilm(String id) async {
    try {
      final response = await http.delete(Uri.parse(_baseUrl + 'Film/' + id));
      print(response.statusCode);
      if (response.statusCode == 200) {
        return Right(true);
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure(
          // title: e.response?.statusCode,
          message: e.response));
    }

    return Right(false);
  }
}
