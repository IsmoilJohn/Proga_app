import 'package:fitness_app/clippers/appbarclipper.dart';
import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: AppBarClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: appBarUnderneath,
              ),
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'All Challenges',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      size: 13,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  )
                ],
              ),
              height: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 28, right: 28),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ChallengesCard(
                    description: "You need just run!!",
                    eventName: "IT'S TIME TO RUN!",
                    numberOfPlayers: 6545,
                    potSize: "\$25,б00",
                    perBet: "\$300",
                    imageUrl:
                    "https://i.kym-cdn.com/entries/icons/facebook/000/019/785/it's_time_to_stop_0-7_screenshot.jpg",
                  ),
                  ChallengesCard(
                    description: "Move into the new year with fresh beginings!",
                    eventName: "Hardcore New Year",
                    numberOfPlayers: 1250,
                    potSize: "\$10,500",
                    perBet: "\$100",
                    imageUrl:
                    "https://images.unsplash.com/photo-1482267553367-e79b27d2bba1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                  ),
                  ChallengesCard(
                    description: "Just RUN!! Come on, buddy, you can!!",
                    eventName: "JUST DO IT!!",
                    numberOfPlayers: 10000,
                    potSize: "\$20,000",
                    perBet: "\$200",
                    imageUrl:
                    "https://cdn.vox-cdn.com/thumbor/ipUSxI7xrUF2yLxehTN5kJYkuHs=/0x48:1500x892/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/46469860/justdoitshia.0.0.png",
                  ),
                  ChallengesCard(
                    eventName: "Are you Marathon ready?",
                    numberOfPlayers: 591,
                    potSize: "\$6,000",
                    description: "Ultimate test of your body!",
                    perBet: "\$40",
                    imageUrl:
                    "https://images.unsplash.com/photo-1513276193780-64b881470da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                  ),
                  ChallengesCard(
                    eventName: "Mountain Treak",
                    description: "Explore the nature!",
                    imageUrl:
                    "https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                    numberOfPlayers: 523,
                    perBet: "\$421",
                    potSize: "\$5,124",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChallengesCard extends StatelessWidget {
  final String eventName;
  final String description;
  final int numberOfPlayers;
  final String potSize;
  final String perBet;
  final String imageUrl;

  const ChallengesCard({
    @required this.eventName,
    @required this.description,
    @required this.numberOfPlayers,
    @required this.perBet,
    @required this.potSize,
    @required this.imageUrl,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300],
                spreadRadius: 1,
                blurRadius: 15,
              ),
            ],
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
              imageUrl,
              fit: BoxFit.fitWidth,
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    eventName,
                    style: Theme.of(context).textTheme.body2.copyWith(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.userFriends,
                            color: brandDark,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                numberOfPlayers.toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Players',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.gift,
                            color: brandDark,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                potSize,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'pot size',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.gift,
                            color: brandDark,
                            size: 10,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                perBet,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'per bet',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "Montserrat",
                                  fontSize: 11,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
