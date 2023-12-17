import "package:flutter/material.dart";


// goal: create prop variables to pass through optional text variable


// custom widget
class StyledText extends StatelessWidget {
    const StyledText(this.text, {super.key});

    final String text;

    @override
    Widget build(BuildContext context) {
        return Text(
            text,
            textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                )
            );
    }

}