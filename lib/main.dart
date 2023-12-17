import "package:flutter/material.dart";
import "package:diceapp/gradient_container.dart";

// main function is the entry point to all dart apps


var alignment = Alignment.bottomRight; 

// all apps in flutter are built using widgets
// widgets, or a combination of widgets are used to build apps in flutter
main() {
    // runApp is the entry point to the flutter app, and tells flutter which UI elements
    // to display on the screen
    runApp( const MaterialApp(
        home: Scaffold(
            body: GradientContainer(colors: [Colors.purple , Colors.deepPurple]),
        ),
    ));
}