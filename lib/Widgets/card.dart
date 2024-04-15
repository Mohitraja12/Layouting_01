import 'dart:math';

import 'package:flutter/material.dart';

class Cr_Card extends StatelessWidget {
  const Cr_Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue.shade700, Colors.indigoAccent.shade700])),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Transform.rotate(
                  angle: pi/2,
                  child: Icon(
                    Icons.sim_card,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Transform.rotate(
                  angle: pi/2,
                  child: Icon(
                    Icons.wifi,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "4562    1122    4595    7852",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                )),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Ak Jonson",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text("ExpiryDate",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text("24/2026   ",
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      children: [
                        Text("CVV",
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text("6986",
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://i.ibb.co/LtxCpz9/image.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Text("MasterCard",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
