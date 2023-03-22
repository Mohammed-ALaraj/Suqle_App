import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suqle_app/Shared/Constant/myColors.dart';


//Category Component____________________________________________________________
Widget Categ({
  required AssetImage img,
  required String title,
}) => Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: img, fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(width: 0.2),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );




//PostComponent_________________________________________________________________
int num = 0;
Widget Post({
  required AssetImage img,
  required String title,
  required String prise,
}) => Column(
  children: [
    Expanded(
      flex: 4,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              image: DecorationImage(image: img, fit: BoxFit.contain),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 0.4),
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
            ),
            child:IconButton(
                icon:Icon(Icons.add,size: 20,),
                onPressed: (){
                  num++;
                  print(num);
                },
                color: Constants.MainColor,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
          ),

          Positioned(
            top: 3,
              right: 3,
              child: Container(
                alignment: Alignment.center,
                  margin: EdgeInsets.all(3),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
              ),
                child: Text("$num",
                style: TextStyle(
                  color: Constants.MainColor
                ),
                ),
              )
          )
        ]
      ),
    ),
    Container(
      alignment: Alignment.topLeft,
      child: Text(prise,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment.topLeft,
          child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
    ),
  ],
);

