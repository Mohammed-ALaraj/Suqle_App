import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class showLoadingIndicatorWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.red,
      ),
    );
  }

}