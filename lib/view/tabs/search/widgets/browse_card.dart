import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({
    Key? key, required this.title, required this.color1, required this.color2,}) : super(key: key);

  final String title;
  final String color1;
  final String color2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(height: 90,width: size.width/2.25,
      padding: EdgeInsets.symmetric(horizontal: 9,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            hexToColor(color1),
            hexToColor(color2),
          ],
        ),
      ),
      child: Text(title,style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w700
      ),
      ),
    );
  }
}