import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/flutter_svg.dart';

class menu extends StatelessWidget {
  final Color color = Color.fromRGBO(53, 56, 74, 1);
  //final Color colortextbox = Colors.black12;
  final Color colortextbox = Color.fromRGBO(46, 217, 160, 1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: color,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElasticInLeft(
                        child: SvgPicture.asset(
                      "icons/menu-pin.svg",
                      height: 40,
                      width: 40,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    FadeInRight(
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: colortextbox,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Buscar cerca de mi",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElasticInLeft(
                        child: SvgPicture.asset(
                      "icons/looking-parking.svg",
                      height: 40,
                      width: 40,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    FadeInRight(
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: colortextbox,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Buscar por Categoria",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElasticInLeft(
                        child: SvgPicture.asset(
                      "icons/list-icon.svg",
                      height: 40,
                      width: 40,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    FadeInRight(
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: colortextbox,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Listar Parqueos",
                                style: TextStyle(color: Colors.white))),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
