import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';

class WeeklyMusicList extends StatelessWidget {
  const WeeklyMusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 160,
      child: ListView.builder(
        itemCount: slider.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context,index){
          final slide = slider[index];
          return Column(
            children: [
              Container(
                height: 125,
                width: 240,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(slide['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Text(slide['title'],style: TextStyle(
                color: ColorConstants.starterWhite,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),),
            ],
          );
        }),
      ),
    );
  }
}