import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = ["Apple Store", "Spotify", "Money Transfer", "Grocery","Money Transfer"];
    List<String> subName = [
      "Entertainment",
      "Music",
      "Transaction",
      "Shopping",
      "Transaction"
    ];
    List<String> img = [
      "https://i.ibb.co/mFsfFy7/image.png",
      "https://i.ibb.co/QHCW1B5/image.png",
      "https://i.ibb.co/mCJhKzr/image.png",
      "https://i.ibb.co/rG5xyXx/image.png",
      "https://i.ibb.co/jzxbGn1/image.png"
    ];
    List<String> amt = [
      "15,99","212,99","3000","18","26"
    ];
    List<Color> colors = [
      Colors.black,
      Colors.black,
      Colors.indigoAccent,
      Colors.black,
      Colors.redAccent
    ];
    return Column(
      children: [
        ...List.generate(name.length, (index) {
          return ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: NetworkImage(img[index]))
              ),
            ),
            title: Text(name[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text(subName[index]),
            trailing: Text("-${amt[index]}",style: TextStyle(color: colors[index],fontSize: 20),),
          );
        })
      ],
    );
  }
}
