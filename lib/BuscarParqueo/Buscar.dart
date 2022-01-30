import 'package:flutter/material.dart';

import 'package:la_paz_parking/BuscarParqueo/pages/BuscarCercaDeMi.dart';

class Buscar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mywidget(),
    );
  }
}

class mywidget extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    BuscarCercaDeMiWidget(),
    Text(
      'Index 2: pubg sss',
      style: optionStyle,
    ),
  ];

  @override
  State<mywidget> createState() => _mywidgetState();
}

class _mywidgetState extends State<mywidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: mywidget._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(53, 56, 74, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_search_rounded,
            ),
            label: "Buscar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Buscar cerca de mi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: 'Listar Parqueos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[300],
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
