import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
      ),
      body: ListView(
        children: <Widget>[
          Text('Subtítulo 1'),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // Agrega tus widgets aquí
              ],
            ),
          ),
          Text('Subtítulo 2'),
          Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // Agrega tus widgets aquí
              ],
            ),
          ),
          Text('Subtítulo 3'),
          Container(
            height: 50.0,
            color: Colors.grey,
          ),
          Text('Subtítulo 4'),
          Container(
            height: 50.0,
            color: Colors.grey,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Botón'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
