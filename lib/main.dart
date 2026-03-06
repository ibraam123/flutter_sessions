import 'package:flutter/material.dart';
import 'package:session_7_flutter_hult/session_nine/tasks/screens/main_screen_task.dart';

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

/*
Session 9 Topics explanation:
  Part One - Navigation and Routing
    1 - Navigator Widget: The Navigator widget in Flutter is used to manage a stack of routes (screens) in an app. It allows you to navigate between different screens by pushing and popping routes onto the stack. The Navigator widget provides methods such as push, pop, and pushReplacement to control the navigation flow in your app.
    2 - Routes: In Flutter, a route is a screen or page that can be navigated to. Routes are typically defined as classes that extend StatelessWidget or StatefulWidget. You can create routes for different screens in your app and use the Navigator widget to navigate between them.
    3 - Named Routes: Named routes in Flutter allow you to define routes with a specific name, making it easier to navigate to them without having to reference the route class directly. You can define named routes in the MaterialApp widget using the routes property, and then navigate to them using the Navigator.pushNamed method.
    4 - Passing Data Between Screens By Constructor: In Flutter, you can pass data between screens by including parameters in the constructor of the destination screen. When navigating to a new screen, you can create an instance of the destination screen and pass the required data through its constructor. This allows you to share information between screens and create a more dynamic user experience.
  Part Two - Bottom Navigation Bar and Drawer
    6 - BottomNavigationBar Widget: The BottomNavigationBar widget in Flutter is used to create a bottom navigation bar that allows users to navigate between different sections of an app. It typically consists of multiple items, each representing a different screen or section. The BottomNavigationBar widget provides properties such as currentIndex and onTap to manage the selected item and handle navigation.
    7 - Drawer Widget: The Drawer widget in Flutter is used to create a side navigation drawer that can be opened by swiping from the left edge of the screen or by tapping on an icon. It typically contains a list of navigation options or links to different screens in the app. The Drawer widget can be customized with various properties, such as child, backgroundColor, and more, to create a unique navigation experience for your app.
    8 - Snackbar Widget: The Snackbar widget in Flutter is used to display brief messages at the bottom of the screen. It is typically used to provide feedback to users after an action has been performed, such as showing a confirmation message after a form submission or displaying an error message when something goes wrong. The Snackbar widget can be customized with properties such as content, duration, and action to create a more engaging user experience.

  Functions Of Navigation:
    1 - push: The push function is used to navigate to a new screen by adding a new route to the navigation stack. It takes a route as an argument and pushes it onto the stack, allowing the user to navigate back to the previous screen using the back button.
    2 - pop: The pop function is used to navigate back to the previous screen by removing the current route from the navigation stack. It can be called when the user wants to go back or when a certain action is completed on the current screen.
    3 - pushReplacement: The pushReplacement function is used to replace the current screen with a new one by removing the current route from the navigation stack and pushing a new route onto it. This is useful when you want to navigate to a new screen without allowing the user to go back to the previous one.
    4 - pushNamed: The pushNamed function is used to navigate to a new screen using a named route. It takes the name of the route as an argument and pushes it onto the navigation stack, allowing for easier navigation without having to reference the route class directly.
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
      home: MainScreenTask(),
    );
  }
}





// Custom Field Example

/*
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
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
*/
