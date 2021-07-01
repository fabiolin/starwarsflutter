import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../infra/repository/repository.dart';
import '../model/film_model.dart';

class HomeController extends GetxController {
  final _repository = Repository();

  RxList<Film> _films = RxList<Film>([]);

  Future<void> getFilms() async {
    try {
      var result = await _repository.films();
      result.fold((failure) => Left(failure), (success) async {
        _films = success;
        print(_films.length);
        return true;
      });
    } catch (ex) {
      print(ex);
    }

    return false;
  }
}
