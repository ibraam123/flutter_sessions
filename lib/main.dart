import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_seven/widgets/column_example.dart';
/*
Topics explanation:
  Part one - Flutter Layout Widgets
    1 - Column Widget: The Column widget in Flutter is used to arrange its child widgets in a vertical direction. It is a part of the Flutter layout system and is commonly used to create vertical layouts. The Column widget takes a list of child widgets and displays them one below the other.
    2 - MainAxisAlignment: MainAxisAlignment is an enum in Flutter that defines how the children of a Column or Row widget are aligned along the main axis (vertical for Column and horizontal for Row). It provides several options such as start, end, center, spaceBetween, spaceAround, and spaceEvenly to control the alignment of child widgets.
    3 - CrossAxisAlignment: CrossAxisAlignment is another enum in Flutter that defines how the children of a Column or Row widget are aligned along the cross axis (horizontal for Column and vertical for Row). It provides options such as start, end, center, stretch, and baseline to control the alignment of child widgets.
    4 - Row Widget: The Row widget in Flutter is used to arrange its child widgets in a horizontal direction. Similar to the Column widget, it is part of the Flutter layout system and is commonly used to create horizontal layouts. The Row widget takes a list of child widgets and displays them side by side.
  Part two - Advanced Layout Widgets
    5 - Stack Widget (Explain stack container |_|): The Stack widget in Flutter is used to overlay multiple child widgets on top of each other. It allows you to position widgets relative to each other using the Positioned widget or by using alignment properties. The Stack widget is useful for creating complex layouts where widgets need to overlap or be layered.
    6 - Positioned Widget: The Positioned widget in Flutter is used within a Stack widget to position its child widget at a specific location. It allows you to specify the distance from the top, bottom, left, and right edges of the Stack. This widget is useful for creating custom layouts where precise positioning of widgets is required.
    7 - ListView Widget: The ListView widget in Flutter is used to create a scrollable list of widgets. It is commonly used to display a large number of items in a vertical or horizontal list. The ListView widget can be created using various constructors, such as ListView.builder, ListView.separated, and ListView.custom, to efficiently build and manage the list items.
    8 - ListView.builder : The ListView.builder constructor in Flutter is used to create a scrollable list of widgets that are built on demand. It is particularly useful for displaying large lists of items, as it only builds the widgets that are currently visible on the screen, improving performance and reducing memory usage. The ListView.builder takes an itemCount parameter to specify the number of items in the list and an itemBuilder function to define how each item should be built.
    9 - GridView Widget: The GridView widget in Flutter is used to create a scrollable grid of widgets. It is commonly used to display items in a grid format, such as a photo gallery or a product catalog. The GridView widget can be created using various constructors, such as GridView.count, GridView.extent, and GridView.builder, to efficiently build and manage the grid items.
    10 - GridView.builder: The GridView.builder constructor in Flutter is used to create a scrollable grid of widgets that are built on demand. Similar to ListView.builder, it is particularly useful for displaying large grids of items, as it only builds the widgets that are currently visible on the screen, improving performance and reducing memory usage. The GridView.builder takes an itemCount parameter to specify the number of items in the grid and an itemBuilder function to define how each item should be built.
* */


void main() {
  runApp(const ExamplesSession());
}

class ExamplesSession extends StatelessWidget {
  const ExamplesSession({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Layout Widgets',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(child: const ColumnExample()),
      ),
    );
  }
}

// Row Example
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomExampleContiner(),
          SizedBox(width: 16),
          CustomExampleContiner(),
          SizedBox(width: 16),
          CustomExampleContiner(),
        ],
      ),
    );
  }
}

// Stack and Positioned Example
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Positioned(
          top: 50,
          left: 50,
          child: CustomExampleContiner(
            width: 200,
            height: 200,
            color: Colors.blueAccent,
          ),
        ),
        Positioned(
          top: 180,
          left: 150,
          child: CustomExampleContiner(
            width: 200,
            height: 200,
            color: Colors.redAccent,
          ),
        ),
        Positioned(
          top: 150,
          left: 80,
          child: Text(
            'Flutter Advanced Layout Widgets',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

// ListView Example
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomExampleContiner(width: 100, height: 200, color: Colors.blueAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 150, height: 150, color: Colors.redAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.greenAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.yellowAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.blueGrey),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.purpleAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.orangeAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.pinkAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.cyanAccent),
        SizedBox(height: 16),
        CustomExampleContiner(width: 200, height: 100, color: Colors.limeAccent),
      ],
    );
  }
}



// ListView.builder Example
class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: CustomExampleContiner(
            height: 100,
            color: Colors.primaries[index % Colors.primaries.length],
          ),
        );
      },
    );
  }
}


