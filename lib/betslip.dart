import 'dart:ffi';

import 'package:flutter/material.dart';

class Betslip extends StatefulWidget {
  const Betslip({super.key});

  @override
  State<Betslip> createState() => _BetslipState();
}

class _BetslipState extends State<Betslip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("M Y  B E T"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            BetslipDisplayGames(
              Time: "18:00  .  25 Jan, 2025",
              Home: "Chelsea",
              Away: "Arsenal",
              Selected: "1st Half Draw",
              Tournament: "England Premier League",
              odds: 2.83,
            ),
            BetslipDisplayGames(
              Time: "18:00  .  25 Jan 2025",
              Home: "Chelsea",
              Away: "Arsenal",
              Selected: "Away Win Either Half",
              Tournament: "England Premier League",
              odds: 1.58,
            ),
            BetslipDisplayGames(
              Time: "18:00  .  25 Jan 2025",
              Home: "Chelsea",
              Away: "Arsenal",
              Selected: "Correct Scores 3:1",
              Tournament: "England Premier League",
              odds: 21.50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Odds:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                    "Stake: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                   Text(
                    "Total Win:",
                    style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                    ],
                  ),
                  Spacer(),
                  Column(crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "251.63",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                    "€ 500.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                   Text(
                    "€ 59,750.00",
                    style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                    ],
                  ),
                  
                 
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BetslipDisplayGames extends StatelessWidget {
  String Time;
  String Home;
  String Away;
  String Selected;
  String Tournament;
  int? Status;
  String? Result;
  double odds;
  BetslipDisplayGames({
    super.key,
    required this.Time,
    required this.Home,
    required this.Away,
    required this.Selected,
    required this.Tournament,
    required this.odds,
    this.Status,
    this.Result,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(9),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$Tournament   -   $Time ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 10),
                  ),
                  Text(
                    "$Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    "$Away",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    "$Selected",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 10),
                  )
                ],
              ),
              Spacer(),
              Text(
                "$odds",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  radius: 12,
                  child: Icon(
                    Icons.check,
                    color: Colors.green,
                  ))
            ],
          ),
        ),
        Divider(
          height: 5,
          thickness: 1,
        ),
      ],
    );
  }
}
