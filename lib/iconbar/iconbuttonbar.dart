import 'package:flutter/material.dart';

class IconButtonBar extends StatefulWidget {
  @override
  _IconButtonBarState createState() => _IconButtonBarState();
}

class _IconButtonBarState extends State<IconButtonBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 90,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black.withOpacity(0.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(0, Icons.home),
            buildIconButton(1, Icons.menu_book_rounded),
            buildIconButton(2, Icons.home_max_rounded),
            buildIconButton(3, Icons.person_outline_rounded),
          ],
        ),
      ),
    );
  }

  Widget buildIconButton(int index, IconData icon) {
    bool isSelected = selectedIndex == index;
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
        backgroundColor: isSelected ? Colors.orange : Colors.white,
        elevation: isSelected ? 5 : 2,
      ),
      child: Icon(
        icon,
        size: 30,
        color: isSelected ? Colors.white : Colors.orange,
      ),
    );
  }
}
