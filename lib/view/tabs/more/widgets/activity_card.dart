import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key, required this.title, required this.icon,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        onTap: (){},
        contentPadding: EdgeInsets.only(left: 8),
        title: Text(title,style: TextStyle(
          fontSize: 17,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        ),
        leading: Icon(icon,color: Colors.white,size: 24,),
        trailing: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,size: 30,),
      ),
    );
  }
}