import 'package:flutter/material.dart';
import 'package:layout_02/Screens/page_01.dart';
import 'package:layout_02/Screens/page_02.dart';
import 'package:layout_02/Widgets/card.dart';
import 'package:layout_02/Widgets/tiles.dart';

class Third_Page extends StatefulWidget {
  const Third_Page({super.key});

  @override
  State<Third_Page> createState() => _Third_PageState();
}

class _Third_PageState extends State<Third_Page> {
  double _currentSliderValue = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.home_max),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => First_Page()));
              },
            ),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "My Cards"),
        BottomNavigationBarItem(
            icon: IconButton(
              icon :  Icon(Icons.pie_chart),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Second_Page()));
              },
            ), label: "Statistics"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: Icon(Icons.arrow_back_ios_new),
                      ),
                      Text(
                        "MyCards",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: Icon(Icons.add),
                      ),
                    ],
                  )),
              Cr_Card(),
              // Container(
              //   height: 300,
              //   child: CreditCardWidget(
              //     cardNumber: '4562 1122 4595 7852',
              //     expiryDate: '24/2000',
              //     cardHolderName: 'AR Jonson',
              //     cvvCode: '6986',
              //     showBackView: false,
              //     onCreditCardWidgetChange: (CreditCardBrand brand) {},
              //     obscureCardNumber: false,
              //     obscureCardCvv: false,
              //     cardType: CardType.mastercard,
              //     isHolderNameVisible: true,
              //     labelValidThru: "ExpiryDate\t",
              //     enableFloatingCard: true,
              //     backCardBorder: Border.all(),
              //     frontCardBorder: Border.all(),
              //     cardBgColor: Colors.indigo.shade900,
              //     padding: 25,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Monthly spending limit",
                      style: TextStyle(fontSize: 25),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 15),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.black.withOpacity(0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Amount: 8,545.00",
                              style: TextStyle(fontSize: 25))),
                    ),
                    Slider(
                      value: _currentSliderValue,
                      max: 100,
                      divisions: 5,
                      activeColor: Colors.indigoAccent.shade700,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "0",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("4,600", style: TextStyle(fontSize: 20)),
                          Text("10,000", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Tiles()
            ],
          ),
        ),
      ),
    );
  }
}
