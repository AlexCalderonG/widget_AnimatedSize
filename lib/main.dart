//import 'dart:html';

import './model/character.dart';
import './model/characters_data.dart';
import './widgets/character_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cartoooooonery'),
      ),
      body: ListView(
          // TODO 1: Verifica la documentación ListView. Es necesario pasar algo a la propiedad de los hijos
          // para generar de forma automática la lista de los personajes. Si revisas el archivo caracteres_datos.dart,
          // encontrarás que tienes acceso a una constante de caracteres de tipo "matriz de caracteres".
          // Usa algún código funcional para convertir esa matriz en una lista de los widgets que
          // has creado en TODO 0.

          children: List.generate(characters.length, (index)
          {
            return CharacterWidget(character: characters[index]);
          })
      ),
    );
  }
}
