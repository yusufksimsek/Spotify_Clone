import 'package:flutter/material.dart';

class MoreTitle extends StatelessWidget {
  const MoreTitle({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        )),
        SizedBox(width: 110,),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search,color: Colors.white,),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.person_sharp,color: Colors.white,),
        ),
      ],
    );
  }
}