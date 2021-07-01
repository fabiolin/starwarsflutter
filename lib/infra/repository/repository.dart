import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../errors/network_exceptions.dart';
import '../service/dio_client.dart';
import '../../presentation/model/film_model.dart';
import '../errors/failure.dart';

class Repository {
  DioClient _dioClient = DioClient();

  Future<Either<Failure, List<Film>>> films() async {
    String _path = '/film';
    var _headers = new Map<String, dynamic>();
    _headers['accept'] = "application/json;charset=utf-8";

    try {
      final response =
          await http.get(Uri.parse('https://localhost:62203/film'));

      // final response = await _dioClient.get(_path);
      print('veio');
      print(response.statusCode);
      if (response.statusCode == 200) {
        return Right(FilmsList.fromJson(jsonDecode(response.body)).filmsList);
      }
    } catch (e) {
      print(e.toString());
      return Left(Failure(
          // title: e.response?.statusCode,
          message: NetworkExceptions.getDioException(e)));
    }

    return Right([]);
  }
}
