import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 11,
      ),
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: ColorConstants.inputHintColor,
          fontSize: 11,
        ),
        filled: true,
        fillColor: ColorConstants.cardBackGroundColor,
        prefixIcon: Icon(Icons.search_outlined,
          color: !FocusScope.of(context).isFirstFocus ? Colors.white : ColorConstants.primaryColor,),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}