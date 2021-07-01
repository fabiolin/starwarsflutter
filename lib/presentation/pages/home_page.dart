import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars'),
      ),
      body: Padding(
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
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff252a34)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: Color(0xff252a34))))),
                      onPressed: () => _homeController.getFilms())
                ],
              )
            ],
          )));
}
