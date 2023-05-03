import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';
import 'package:spotify_clone/view/login/login_page.dart';


class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 24),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/getStarted.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.',
              style: TextStyle(color: ColorConstants.starterWhite, fontSize: 17, fontWeight: FontWeight.w600, ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
                height: 58,
                color: ColorConstants.primaryColor,
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
              child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}
