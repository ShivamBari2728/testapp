import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 66, 66, 66),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  spacing: 20,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/44.jpg"),
                                    backgroundColor: Colors.amber,
                                    
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Hi, Anjila",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        "progress 14%",
                                        style: TextStyle(
                                          color: Colors.white,
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.notifications,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  shape: const CircleBorder(),
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    66,
                                    66,
                                    66,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(backgroundColor: Colors.amber),
                              CircleAvatar(backgroundColor: Colors.amber),
                              CircleAvatar(backgroundColor: Colors.amber),
                              CircleAvatar(backgroundColor: Colors.amber),
                              CircleAvatar(backgroundColor: Colors.amber),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(color: Colors.amber),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
