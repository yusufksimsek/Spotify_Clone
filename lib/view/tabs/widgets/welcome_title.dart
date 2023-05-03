import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal),),
        IconButton(
          onPressed: (){ },
          icon: Icon(Icons.more_vert,color: Colors.white,),
        ),
      ],
    );
  }
}