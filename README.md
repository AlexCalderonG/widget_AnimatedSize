# widget_AnimatedSize
Ejercicio Flutter 2 Parte 3 PMDM

AnimatedSize:
    El Widget permite alterar el tamaño de una imagen mediante una acción. Para ello, basta con añadir
    un GestureDetector, si se quiere hacer que al tocar la imagen, esta cambie de tamaño, y meter dentro
    el contenedor con la imagen deseada.

    Para añadir el evento de tocar la imagen, se le añade onTap() al GestureDetector y se crea el método del evento.
    Si lo tienes ya creado puedes llamarlo.

    Si se desea, se le puede añadir un estilo de transición con el parámetro curve y poniendole el tipo de animación.
    Otra opción es añadirle tiempo que dure la animación con el parámetro duration.

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => [...],
      child: Container(
        color: Colors.[...],
        child: AnimatedSize(
          curve: Curves.[...],
          duration: const Duration(seconds: [...]),
          child: [...],
        ),
      ),
    );
  }

La aplicación toma como base el ejercicio anterior.
Para probar el widget de Animated size, se añade la opción de poder agrandar las imagenes de los personajes al tocarlas.

Para probarlo simplemente clicka sobre una imagen y esta se agrandará y encogerá.


https://github.com/AlexCalderonG/widget_AnimatedSize