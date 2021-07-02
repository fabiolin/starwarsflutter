import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../controller/home_controller.dart';
import 'home_page.dart';

class HomeRegisterPage extends StatelessWidget {
  HomeRegisterPage({this.id});
  final String id;

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Star Wars'),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller:
                                    _homeController.directorTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Diretor',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller:
                                    _homeController.producerTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Produtor',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller:
                                    _homeController.openingCrawlTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                minLines: 1,
                                maxLines: 6,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Descrição',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller:
                                    _homeController.episodeIdTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Id do Episódio',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller:
                                    _homeController.releaseDateTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Data do lançamento',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller: _homeController.titleTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Título',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextFormField(
                                controller: _homeController.urlTextController,
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'URL',
                                  fillColor: Theme.of(context).cardColor,
                                  hintStyle: GoogleFonts.karla(
                                    fontSize: 18,
                                    color: Color(0xffe0e3eb),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                )))),
                    SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.only(left: 10, top: 5, right: 20),
                        child: ElevatedButton(
                            child: Text(
                                _homeController.idUpdate != null &&
                                        _homeController.idUpdate != ''
                                    ? "ATUALIZAR"
                                    : "CADASTRAR",
                                style: TextStyle(fontSize: 14)),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(
                                    Colors.black),
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    Color(0xFFFFC529)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Color(0xFFFFC529))))),
                            onPressed: () {
                              _homeController.idUpdate != null &&
                                      _homeController.idUpdate != ''
                                  ? _homeController.updateFilm()
                                  : _homeController.insertFilm();
                              Navigator.of(context).pop();
                            }))
                  ],
                ))),
      );
}
