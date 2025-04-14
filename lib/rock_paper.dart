import 'dart:math';

import 'package:flutter/material.dart';

class RockPaper
    extends
        StatefulWidget {
  @override
  const RockPaper({
    super.key,
  });

  @override
  State<
    StatefulWidget
  >
  createState() {
    return _RockPaperState();
  }
}

class _RockPaperState
    extends
        State<
          RockPaper
        > {
  String you = "❓";
  String computer =
      "❓";
  String result =
      "";
  int yourScore = 0;
  int
  computerScore = 0;
  var choices = [
    "✊",
    "✋",
    "✌️",
  ];

  void input(
    String you,
  ) {
    setState(() {
      this.you =
          you;

      computer =
          choices[Random()
              .nextInt(
                3,
              )];

      if (you ==
          computer) {
        result =
            "It is a Tie😑";
      } else if (you ==
          "✊") {
        if (computer ==
            "✌️") {
          result =
              "You Won🥳";
          yourScore++;
        } else {
          result =
              "You Lost😢";
          computerScore++;
        }
      } else if (you ==
          "✋") {
        if (computer ==
            "✊") {
          result =
              "You Won🥳";
          yourScore++;
        } else {
          result =
              "You Lost😢";
          computerScore++;
        }
      } else if (you ==
          "✌️") {
        if (computer ==
            "✋") {
          result =
              "You Won🥳";
          yourScore++;
        } else {
          result =
              "You Lost😢";
          computerScore++;
        }
      }
    });
  }

  void restart() {
    setState(() {
      result = "";
    computer = "❓";
    you = "❓";
    yourScore = 0;
    computerScore =
        0;
    });
  }

  @override
  Widget build(
    BuildContext
    context,
  ) {
    return Container(
      color:
          Colors
              .blue,
      child: Center(
        child: Column(
          mainAxisSize:
              MainAxisSize
                  .min,
          children: [
            Text(
              "Let's Play Rock-Cissor-Paper!",
              style: TextStyle(
                fontSize:
                    20,
                fontWeight:
                    FontWeight.bold,
              ),
            ),
            SizedBox(
              height:
                  20,
            ),
            Text(
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
              "You: $you",
            ),
            Text(
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
              "Computer: $computer",
            ),
            Row(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    input(
                      '✊',
                    );
                  },
                  icon: Image.asset(
                    "assets/images/rock.png",
                    scale:
                        10,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    input(
                      '✌️',
                    );
                  },
                  icon: Image.asset(
                    "assets/images/scissors.png",
                    scale:
                        10,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    input(
                      '✋',
                    );
                  },
                  icon: Image.asset(
                    "assets/images/paper.png",
                    scale:
                        10,
                  ),
                ),
              ],
            ),
            Text(
              result,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text(
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold,
                  ),
                  "Your score: $yourScore",
                ),
                SizedBox(
                  width:
                      10,
                ),
                Text(
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold,
                  ),
                  "Computer score: $computerScore",
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                restart();
              },
              icon: Image.asset(
                "assets/images/restart.png",
                scale:
                    10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
