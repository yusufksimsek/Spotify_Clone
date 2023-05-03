import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/view/tabs/home/widgets/artist.dart';
import 'package:spotify_clone/view/tabs/home/widgets/custom_title.dart';
import 'package:spotify_clone/view/tabs/home/widgets/weekly_music_list.dart';
import 'package:spotify_clone/view/tabs/home/widgets/weekly_title.dart';
import 'package:spotify_clone/view/tabs/widgets/welcome_title.dart';

import 'widgets/top_music.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: 34,),
            WelcomeTitle(title: "Good Morning"),
            SizedBox(height: 32,),
            WeeklyTitle(),
            SizedBox(height: 24,),
            WeeklyMusicList(),
            SizedBox(height: 4,),
            CustomTitle(title: "Your top music"),
            TopMusic(),
            SizedBox(height: 8,),
            CustomTitle(title: 'Suggested Artists'),
            Artist(),
          ],
        ),
      ),
    );
  }
}












