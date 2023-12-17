import "dart:math";
import "package:flutter/material.dart";

class Dice extends StatefulWidget {
    const Dice({super.key});

    @override
    State<Dice> createState() {
        return DiceState();
    }
}

class DiceState extends State<Dice> {

    var diceNum = 1;
    final double diceWidth = 200;

    roll() {
        setState(() {
            diceNum = Random().nextInt(6) + 1;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                const Text("Dice App", style: TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold)),
                const SizedBox(height: 50),
                Center(child: Image.asset("assets/images/dice-$diceNum.png", width: diceWidth)),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: roll,
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: 
                        const Text("Let's roll", style:TextStyle(fontSize: 40))
                )]
        );
    }
}