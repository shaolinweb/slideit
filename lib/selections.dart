import 'package:flutter/material.dart';

class Selections extends StatefulWidget {
  const Selections({super.key});

  @override
  State<Selections> createState() => _SelectionsState();
}

class _SelectionsState extends State<Selections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("S E L E C T I O N S"),
        automaticallyImplyLeading: true,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(5),
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Text("Your Selections: 2"),
                Spacer(),
                Text(
                  "REMOVE ALL",
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.cancel),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Newcastle United",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("1X2"),
                                Text("Newcastle United v Westham United"),
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "2.51",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green),
                                ),
                                Text(
                                  "Not Started",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green),
                                )
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          height: 5,
                          thickness: 2,
                          color: Colors.grey,
                        )
                      ],
                    )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(5),
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Multiples"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "255.20",
                        style: TextStyle(
                            color: Colors.blueAccent, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(color: Colors.white),
                          height: 50,
                          width: 100,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "€ 100",
                                prefixText: "€ ",
                                prefixStyle: TextStyle(
                                    color: Colors.green,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          ))
                    ],
                  ),
                    Row(
                      children: [
                        Text(
                            "Potential Winning:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                        Text(
                        "€ 59,750.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      ],
                    ),
                      
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
