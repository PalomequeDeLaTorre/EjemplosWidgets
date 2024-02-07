import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Ejemplos Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleApp(),
    );
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación de Ejemplos Widgets'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            TextWidget(), // Básico: Muestra un texto de ejemplo
            SizedBox(height: 20),
            ImageWidget(), // Básico: Muestra una imagen de ejemplo
            SizedBox(height: 20),
            RaisedButtonWidget(), // Básico: Muestra un botón elevado
            SizedBox(height: 20),
            ContainerWidget(), // Diseño: Muestra un contenedor rectangular de color verde
            SizedBox(height: 20),
            RowWidget(), // Diseño: Muestra una fila de íconos
            SizedBox(height: 20),
            CustomTextWidget(), // Básico: Muestra un texto personalizado
            SizedBox(height: 20),
            CustomButtonWidget(), // Básico: Muestra un botón personalizado
            SizedBox(height: 20),
            CustomIconWidget(), // Básico: Muestra un ícono personalizado
            SizedBox(height: 20),
            CardWidget(), // Diseño: Muestra un texto dentro de una tarjeta
            SizedBox(height: 20),
            CustomContainerWidget(), // Diseño: Muestra un contenedor personalizado
            SizedBox(height: 20),
            ListTileWidget(), // Diseño: Muestra un título, subtítulo y un ícono
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Widgets básicos
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Este es un texto de ejemplo', // Texto de ejemplo
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    );
  }
}

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/example.png', // Ruta de la imagen de ejemplo
      width: 200,
      height: 200,
    );
  }
}

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Presionar'), // Texto del botón
    );
  }
}

// Widgets de diseño
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green, // Color del contenedor
      child: Center(
        child: Text('Contenedor'), // Texto para identificar el widget
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.favorite),
        Icon(Icons.thumb_up),
        Icon(Icons.thumb_down),
      ],
    );
  }
}

// Widgets básicos personalizados
class CustomTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Texto personalizado',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    ); // Texto para identificar el widget
  }
}

class CustomButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Botón personalizado'), // Texto del botón
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.star),
      onPressed: () {},
      tooltip: 'Ícono personalizado', // Descripción emergente
    );
  }
}

// Widgets de diseño personalizados
class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text('Tarjeta'), // Texto dentro de la tarjeta
      ),
    );
  }
}

class CustomContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue, // Color del contenedor
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Contenedor personalizado', // Texto dentro del contenedor
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.mail),
      title: Text('Título'), // Título
      subtitle: Text('Subtítulo'), // Subtítulo
      trailing: Icon(Icons.arrow_forward), // Ícono al final
    );
  }
}
