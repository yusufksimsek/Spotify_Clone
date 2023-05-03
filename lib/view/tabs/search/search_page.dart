import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/data/data.dart';
import 'package:spotify_clone/view/tabs/home/widgets/custom_title.dart';
import 'package:spotify_clone/view/tabs/search/widgets/browse_card.dart';
import 'package:spotify_clone/view/tabs/search/widgets/pod_cast.dart';
import 'package:spotify_clone/view/tabs/search/widgets/search_input.dart';
import 'package:spotify_clone/view/tabs/widgets/welcome_title.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 34,),
                WelcomeTitle(title: 'Search'),
                SizedBox(height: 32,),
                SearchInput(),
                SizedBox(height: 13,),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: searchList.map((search) => Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorConstants.cardBackGroundColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(search,style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                  ).toList(),
                ),
              SizedBox(height: 24,),
                CustomTitle(title: 'Podcasts'),
                SizedBox(height: 13,),
                PodCast(),
                SizedBox(height: 12,),
                CustomTitle(title: 'Browse All'),
                SizedBox(height: 13,),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    BrowseCard(
                      title: 'Made For You',
                      color1: '#E02FCF',
                      color2: '#00C188',
                    ),
                    BrowseCard(
                      title: 'Charts',
                      color1: '#0A3CEC',
                      color2: '#4DD4AC',
                    ),
                    BrowseCard(
                      title: 'Discover',
                      color1: '#0A3CEC',
                      color2: '#D9DD01',
                    ),
                    BrowseCard(
                      title: 'New Release',
                      color1: '#0E31AE',
                      color2: '#DD1010',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







