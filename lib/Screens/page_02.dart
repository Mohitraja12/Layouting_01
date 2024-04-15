import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:layout_02/Screens/page_01.dart';
import 'package:layout_02/Screens/page_03.dart';
import 'package:layout_02/Widgets/tiles.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({super.key});

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  @override
  Widget build(BuildContext context) {
    List<String> month = ["Oct", "Nov", "Dec", "Jan", "Feb", "Mar"];
    List<Color> clr = [
      Colors.white,Colors.white,Colors.white,Colors.indigoAccent,Colors.white,Colors.white,
    ];
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
        BottomNavigationBarItem(icon: IconButton(
          icon: Icon(Icons.wallet),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Third_Page()));
          },
        ), label: "My Cards"),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart), label: "Statistics"),
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
                        "Wallet",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: Icon(Icons.notifications_none),
                      ),
                    ],
                  )),
              SizedBox(height: 30),
              Text(
                "Current Balance",
                style:
                    TextStyle(color: Colors.black.withOpacity(0.3), fontSize: 30),
              ),
              Text(
                "18,545.00",
                style: TextStyle(fontSize: 40),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 300,
                width: double.infinity,
                child: LineChart(LineChartData(
                    minX: 0,
                    maxX: 5,
                    minY: 0,
                    maxY: 5,
                    titlesData: FlTitlesData(
                      topTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      leftTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      bottomTitles:
                          AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    ),
                    gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        drawHorizontalLine: false),
                    lineBarsData: [
                      LineChartBarData(
                        belowBarData: BarAreaData(
                            show: true,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.indigoAccent.withOpacity(0.1),
                                  Colors.indigoAccent.withOpacity(0.8)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter)),
                        isCurved: true,
                        color: Colors.indigoAccent,
                        barWidth: 6,
                        dotData: FlDotData(show: false),
                        spots: [
                          FlSpot(0, 1),
                          FlSpot(1, 3),
                          FlSpot(2, 2),
                          FlSpot(3, 4),
                          FlSpot(4, 3),
                          FlSpot(5, 5),
                        ],
                      )
                    ])),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(month.length, (index) {
                      return Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          color: clr[index],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(child: Text(month[index])),
                      );
                    })
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
