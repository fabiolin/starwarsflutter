import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../infra/repository/repository.dart';
import '../model/film_model.dart';

class HomeController extends GetxController {
  final _repository = Repository();

  TextEditingController directorTextController = TextEditingController();
  TextEditingController producerTextController = TextEditingController();
  TextEditingController openingCrawlTextController = TextEditingController();
  TextEditingController episodeIdTextController = TextEditingController();
  TextEditingController releaseDateTextController = TextEditingController();
  TextEditingController titleTextController = TextEditingController();
  TextEditingController urlTextController = TextEditingController();

  RxList<Film> _films = RxList<Film>([]);
  get films => this._films.value;
  set films(value) => this._films.value = value;

  final _idUpdate = ''.obs;
  get idUpdate => this._idUpdate.value;
  set idUpdate(value) => this._idUpdate.value = value;

  @override
  void onInit() {
    print("1" + idUpdate);
    getFilms();
    fillUpdate();
    super.onInit();
  }

  Future<void> getFilms() async {
    try {
      var result = await _repository.films();
      result.fold((failure) => Left(failure), (success) async {
        films = success;
        print(_films.length);
        return true;
      });
    } catch (ex) {
      print(ex);
    }

    return false;
  }

  Future<void> insertFilm() async {
    try {
      Film film = Film(
          director: directorTextController.text,
          producer: producerTextController.text,
          openingCrawl: openingCrawlTextController.text,
          episodeId: episodeIdTextController.text,
          releaseDate: releaseDateTextController.text,
          title: titleTextController.text,
          url: urlTextController.text);

      var result = await _repository.insertFilm(film);
      result.fold((failure) => Left(failure), (success) async {
        films.add(film);
        return true;
      });
    } catch (ex) {
      print(ex);
    }

    return false;
  }

  Future<void> fillUpdate() async {
    try {
      if (idUpdate != null && idUpdate != '') {
        var result = await _repository.film(idUpdate);

        result.fold((failure) => Left(failure), (success) async {
          directorTextController.text = success.director;
          producerTextController.text = success.producer;
          openingCrawlTextController.text = success.openingCrawl;
          episodeIdTextController.text = success.episodeId;
          releaseDateTextController.text = success.releaseDate;
          titleTextController.text = success.title;
          urlTextController.text = success.url;
        });
      }
    } catch (ex) {
      print(ex);
    }

    return false;
  }

  Future<void> updateFilm() async {
    try {
      Film film = Film(
          id: idUpdate,
          director: directorTextController.text,
          producer: producerTextController.text,
          openingCrawl: openingCrawlTextController.text,
          episodeId: episodeIdTextController.text,
          releaseDate: releaseDateTextController.text,
          title: titleTextController.text,
          url: urlTextController.text);

      var result = await _repository.updateFilm(film);
      result.fold((failure) => Left(failure), (success) async {
        getFilms();
        idUpdate = '';
        return true;
      });
    } catch (ex) {
      print(ex);
    }

    return false;
  }

  Future<void> deleteFilm(String id) async {
    try {
      var result = await _repository.deleteFilm(id);
      result.fold((failure) => Left(failure), (success) async {
        films.removeWhere((item) => item.id == id);
        return true;
      });
    } catch (ex) {
      print(ex);
    }

    return false;
  }
}
