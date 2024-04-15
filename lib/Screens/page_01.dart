import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:layout_02/Screens/page_02.dart';
import 'package:layout_02/Screens/page_03.dart';
import 'package:layout_02/Widgets/tiles.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_max), label: "Home"),
        BottomNavigationBarItem(icon: IconButton(
          icon: Icon(Icons.wallet),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Third_Page()));
          },
        ), label: "My Cards"),
        BottomNavigationBarItem(
            icon: IconButton(
             icon :  Icon(Icons.pie_chart),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Second_Page()));
              },
            ),
            label: "Statistics"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.ibb.co/ZWvdBWy/image.png"),
                                  fit: BoxFit.cover),
                              color: Colors.greenAccent),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome back,        ",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            Text(
                              "Brooklyn Simmons",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.1),
                      ),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                child: CreditCardWidget(
                  cardNumber: '4562 1122 4595 7852',
                  expiryDate: '24/2026',
                  cardHolderName: 'Brooklyn Simmons',
                  cvvCode: '6986',
                  showBackView: false,
                  onCreditCardWidgetChange: (CreditCardBrand brand) {},
                  obscureCardNumber: false,
                  obscureCardCvv: false,
                  cardType: CardType.mastercard,
                  isHolderNameVisible: true,
                  labelValidThru: "ExpiryDate\t",
                  enableFloatingCard: true,
                  backCardBorder: Border.all(),
                  frontCardBorder: Border.all(),
                  cardBgColor: Colors.indigo.shade900,
                  padding: 25,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Sent",
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.arrow_downward,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Receive", style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.currency_exchange,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Loan", style: TextStyle(fontSize: 18))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.cloud_upload_outlined,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Top-up", style: TextStyle(fontSize: 18))
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transaction",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style:
                          TextStyle(color: Colors.indigoAccent, fontSize: 20),
                    )
                  ],
                ),
              ),
              Tiles()
            ],
          ),
        ),
      ),
    );
  }
}
