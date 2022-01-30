import 'package:flutter/material.dart';
import 'package:la_paz_parking/BuscarParqueo/Buscar.dart';
import 'package:la_paz_parking/BuscarParqueo/pages/buscados.dart';

class principalMenu extends StatelessWidget {
  const principalMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/Menu_background.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 160,
                      height: 160,
                      color: Colors.yellowAccent,
                      child: Icon(
                        Icons.local_parking,
                        color: Colors.black,
                        size: 80,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "La Paz parking",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Ahora encontrar estacionamientos es mas facil!!',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(16.0),
                          backgroundColor: Colors.yellowAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Buscar()));
                      },
                      child: Text(
                        'Buscar parqueo',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.yellowAccent.withOpacity(0.2),
                        highlightColor: Colors.yellowAccent.withOpacity(0.2),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => buscados()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Registrar parqueo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.yellowAccent,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Colors.yellowAccent, width: 4)),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
