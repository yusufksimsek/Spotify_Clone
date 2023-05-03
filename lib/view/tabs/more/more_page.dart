import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/view/tabs/home/widgets/custom_title.dart';
import 'package:spotify_clone/view/tabs/more/widgets/activity_card.dart';
import 'package:spotify_clone/view/tabs/more/widgets/more_title.dart';
import 'package:spotify_clone/view/tabs/more/widgets/playlist_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 34,),
              MoreTitle(title: 'Your Library'),
              PlayListCard(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                    onPressed: (){}, 
                    child: Text('See All',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),),
                ),
              ),
              SizedBox(height: 8,),
              CustomTitle(title: 'Your Activity'),
              SizedBox(height: 16,),
              ActivityCard(
                title: 'Liked Songs',
                icon: Icons.favorite,
              ),
              Divider(color: Colors.grey.shade800),
              ActivityCard(
                title: 'Follow Artists',
                icon: Icons.people,
              ),
              Divider(color: Colors.grey.shade800),
              ActivityCard(
                title: 'Follow Podcast',
                icon: Icons.mic,
              ),
            ],
          ),
        ),
    );
  }
}






