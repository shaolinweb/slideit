import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Center(
            child: Text(
          "Login",
          style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
        )),
        title: Text(
          "H O M E",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(border: Border.all(width: 2, color: Colors.amber),
                  borderRadius: BorderRadius.circular(10), color: Colors.transparent),
              child: Row(
                children: [
                  Icon(
                    Icons.wallet,
                    color: Colors.amber,
                  ),
                  Text(
                    "USD 5,500",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )),
          Icon(
            Icons.notifications,
            color: Colors.amber,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 190,
            width: double.infinity,
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "England - Premier League",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Today 8:30PM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset(
                                      "image/chelsea.png",
                                      scale: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Chelsea",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    child: Text("-",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  Text("2",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Image.asset(
                                      "image/manu.png",
                                      scale: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Manchester U",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MatchOddsWidgetA(
                                oddsType: "1",
                                value: 1.55,
                              ),
                              MatchOddsWidgetA(
                                oddsType: "X",
                                value: 3.51,
                              ),
                              MatchOddsWidgetA(
                                oddsType: "2",
                                value: 4.25,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
          ),
          Row(
            children: [
              Text("    "),
              Text(
                "Upcoming Matches",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  height: 75,
                  width: double.infinity,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 9,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "18:00AM",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 7),
                          ),
                          Text(
                            "Chelsea",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                          Text(
                            "Manchester UTD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                          Text(
                            "England - Premier League",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 7),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 9),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1X2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 9),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MatchOddsWidgetB(value: 1.51,),
                               MatchOddsWidgetB(value: 4.33,),
                                MatchOddsWidgetB(value: 5.31,),
                            
                             
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MatchOddsWidgetB extends StatelessWidget {
 final double value;
   MatchOddsWidgetB({
    super.key,required this.value
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12)),
        child: Text(
          "$value",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }
}

class MatchOddsWidgetA extends StatelessWidget {
 final String oddsType;
 final double value;
  MatchOddsWidgetA({super.key, required this.oddsType, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(12)),
      child: Text(
        "$oddsType | $value",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
      ),
    );
  }
}
