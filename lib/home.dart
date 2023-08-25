import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:text_game/game.dart';
import 'package:text_game/utils/routes.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(202123),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/logo.png"),
              const Text(
                "A new mystery in the world of mysteries",
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 24.0,
                    color: Color.fromRGBO(179, 178, 172, 1),
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  AnimatedButton(
                    height: 50,
                    width: 200,
                    text: 'Play',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    textStyle: const TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 24.0,
                        color: Color.fromRGBO(179, 178, 172, 1),
                        fontWeight: FontWeight.bold),
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderRadius: 50,
                    borderWidth: 2,
                    onPress: () async {
                      await Future.delayed(Duration(milliseconds: 500));
                      Navigator.of(context).push(createRoute(
                        () => ChatRoomPage(),
                      ));
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AnimatedButton(
                    height: 50,
                    width: 200,
                    text: 'Settings',
                    isReverse: true,
                    selectedTextColor: Colors.black,
                    transitionType: TransitionType.LEFT_TO_RIGHT,
                    textStyle: const TextStyle(
                        fontFamily: 'DancingScript',
                        fontSize: 24.0,
                        color: Color.fromRGBO(179, 178, 172, 1),
                        fontWeight: FontWeight.bold),
                    backgroundColor: Colors.black,
                    borderColor: Colors.white,
                    borderRadius: 50,
                    borderWidth: 2,
                    onPress: () {},
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
