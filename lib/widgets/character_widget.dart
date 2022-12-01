import '../model/character.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO 0: Usa widgets básicos que ya conoces para crear este widget de personaje (character).
    // Algunos consejos útiles:
    // * No elimines el widget Contenedor, agregue todos sus widgets dentro. Recuerda que el contenedor
    // tiene solo un hijo. El primer paso probablemente debería ser agregar el hijo como una Fila ;)
    // * Para cargar las imágenes usa Image.asset(character.image, ...
    // * En el widget Contenedor, se puede usar la decoración: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.all(Radius.circular(20.0)))

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              children: [MyStatefulWidget(character: character)],
            ),
          ),
          Flexible(
            flex: 10,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        character.name,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        if (character.stars > 4) ...[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(character.stars.toString()),
                          ),
                        ] else ...[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red),
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Text(character.stars.toString()),
                          ),
                        ],
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          character.jobTitle,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  final Character character;

  const MyStatefulWidget({super.key, required this.character});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _size = 150.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 150.0 : 200.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _updateSize(),
      child: Container(
        child: AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            widget.character.image,
            width: _size,
            height: _size,
          ),
        ),
      ),
    );
  }
}
