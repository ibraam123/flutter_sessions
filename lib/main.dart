import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_eight/screens/profile_screen.dart';
import 'package:session_7_flutter_hult/session_eight/tasks/profile_app.dart';

/*
Session 7 Topics explanation:
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

/*
Session 8 Topics explanation:
  Part One - User Input
    1 - TextField Widget: The TextField widget in Flutter is used to create a text input field where users can enter and edit text. It provides various properties to customize its appearance and behavior, such as decoration, keyboardType, obscureText, and onChanged. The TextField widget is commonly used in forms, search bars, and any other scenario where user input is required.
    2 - Buttons Widget: Flutter provides several types of buttons, such as ElevatedButton, TextButton, and IconButton, to allow users to interact with the app. Each button type has its own style and behavior, and they can be customized using properties like onPressed, child, style, and more. Buttons are essential for triggering actions and navigating through the app.
    3 - GestureDetector Widget: The GestureDetector widget in Flutter is used to detect and respond to user gestures, such as taps, drags, and swipes. It provides various callback properties, such as onTap, onDoubleTap, onLongPress, and onPanUpdate, to handle different types of gestures. The GestureDetector widget is commonly used to add interactivity to widgets that do not have built-in gesture handling, allowing you to create custom interactions and animations.
  Part Two - State Management
    4 - StatefulWidget: The StatefulWidget in Flutter is a widget that has mutable state. It allows you to create widgets that can change their appearance or behavior based on user interactions or other events. A StatefulWidget consists of two classes: the StatefulWidget class itself, which is immutable, and the State class, which holds the mutable state and defines the build method to create the widget's UI.
    5 - setState Method: The setState method in Flutter is used to notify the framework that the internal state of a StatefulWidget has changed. When you call setState, it triggers a rebuild of the widget, allowing the UI to reflect the updated state. The setState method takes a callback function where you can update the state variables, and it should be called whenever you want to update the UI based on changes in the state.
    6 - LifeCycle Methods: Lifecycle methods in Flutter are special methods that are called at different stages of a widget's lifecycle. They allow you to perform specific actions when a widget is created, updated, or destroyed. Some common lifecycle methods include initState (called when the widget is first created), didUpdateWidget (called when the widget is updated), and dispose (called when the widget is removed from the widget tree). These methods are useful for managing resources, initializing data, and cleaning up when a widget is no longer needed.
* */

void main() {
  runApp(const ExamplesSession());
}

class ExamplesSession extends StatefulWidget {
  const ExamplesSession({super.key});

  @override
  State<ExamplesSession> createState() => _ExamplesSessionState();
}

class _ExamplesSessionState extends State<ExamplesSession> {

  List<Widget> option = [
    ProfileApp(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: option[1],
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onSubmit});
  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmit,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        labelText: "Enter Your First Name",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1 , style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2 , style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(8),
        ),

      ),
    );
  }
}







