import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';

class Artist extends StatelessWidget {
  const Artist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 195,
      child: ListView.builder(
        itemCount: artists.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          final artist = artists[index];
          return Container(height: 155,
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              color: ColorConstants.cardBackGroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: 125,width: 125,
                  child: Image.asset(artist['image']),
                ),
                SizedBox(height: 16,),
                Text(artist['name'],style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}