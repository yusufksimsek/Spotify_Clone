import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';

class TopMusic extends StatelessWidget {
  const TopMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 220,
      child: ListView.builder(
        itemCount: topMixes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          final topMix=topMixes[index];
          return Container(
            decoration: BoxDecoration(
              color: ColorConstants.cardBackGroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(left: 15,right: 15,top: 15,bottom: 0),
            margin: EdgeInsets.all(4),
            height: 155,
            width: 195,
            child: Column(
              children: [
                Container(
                  height: 113,
                  width: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(topMix['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 7,
                        height: 24,
                        decoration: BoxDecoration(
                          color: hexToColor(topMix['color']),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Container(height: 8,
                        decoration: BoxDecoration(
                          color: hexToColor(topMix['color']),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                Text(topMix['title'],style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                ),
                SizedBox(height: 8,),
                Text(topMix['description'],style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          );
        },
      ),
    );
  }
}