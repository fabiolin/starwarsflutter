import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starwarsflutter/presentation/pages/home_register_page.dart';

import '../../routes.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => HomeRegisterPage());
        },
        label: const Icon(FontAwesomeIcons.plus,
            size: 14, color: Color(0xff252a34)),
        backgroundColor: Color(0xffe0e3eb),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Categorias',
                      style: GoogleFonts.karla(
                          fontSize: 16, color: Color(0xff6d6e75))),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(
                          child: Text("Filmes",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffe0e3eb))),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xff252a34)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Color(0xff252a34))))),
                          onPressed: () => _homeController.getFilms())
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 1000,
                      child: Obx(() => ListView(children: <Widget>[
                            for (var film in _homeController.films)
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        _homeController.idUpdate = film.id;
                                        Get.to(() => HomeRegisterPage());
                                        _homeController.fillUpdate();
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(film.title,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0xffe0e3eb))),
                                          Text(film.director,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color(0xffe0e3eb))),
                                          SizedBox(height: 10)
                                        ],
                                      )),
                                  GestureDetector(
                                      onTap: () {
                                        _homeController.deleteFilm(film.id);
                                        _homeController.getFilms();
                                      },
                                      child: Icon(FontAwesomeIcons.minusCircle,
                                          size: 16, color: Color(0xffe0e3eb))),
                                ],
                              )
                          ])))
                ],
              ))));
}
