import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  bool _light = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget> [

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 227, 227, 227),
              border: Border.all(color: Color.fromARGB(255, 212, 212, 212)),
              
              borderRadius: BorderRadius.circular(5),
              ),
            width: 350,
            height: 50, 

            child: Row(
              children: <Widget> [
                  Container(
                    padding: const EdgeInsets.only(left: 8),
                    child: _light == true
                      ? const Icon(Icons.sentiment_very_satisfied)
                      : const Icon(Icons.sentiment_very_dissatisfied)
                  ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      "Felicidade",
                      style: TextStyle(
                        color: Color.fromARGB(255, 106, 106, 106),
                        fontSize: 16,
                        ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 90),
                    child: Switch(
                      value: _light, 
                      onChanged: (bool value) {
                        setState(() {
                          _light = value;
                        });
                      }
                    ),
                  ),
                  ),
              ],
            ),
          ),

        ]
      ),
    );
  }
}