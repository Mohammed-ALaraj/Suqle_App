
import 'package:flutter/material.dart';
import 'package:suqle_app/Shared/Constant/myColors.dart';


class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.symmetric(horizontal: BorderSide(width: 0.5,color: Colors.red) ),
              boxShadow: [BoxShadow(
                  offset: Offset(0,2),
                  color: Colors.red,
                  blurRadius: 3)
              ]
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("معتصم الاعرج",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),),
                SizedBox(height: 10,),
                Text("0595284114",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14
                  )
                  ,)
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.arrow_back_ios,color: Constants.MainColor,),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'الملف الشخصي',
                    ),
                  ),
                ),
                onTap:() {
                  // Navigator.pushNamed(context, '/HowAreWe');
                  },
                trailing: Icon(Icons.person_outline,color: Constants.MainColor,),
              ),
              ListTile(
                leading: Icon(Icons.arrow_back_ios,color: Constants.MainColor,),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'المفضلة',
                    ),
                  ),
                ),
                trailing: Icon(Icons.favorite_border,color: Constants.MainColor,),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.arrow_back_ios,color: Constants.MainColor,),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'السلة',
                    ),
                  ),
                ),
                onTap:() {
                  // Navigator.pushNamed(context, '/HowAreWe');
                },
                trailing: Icon(Icons.shopping_cart_outlined,color: Constants.MainColor,),
              ),

              ListTile(
                leading: Icon(Icons.arrow_back_ios,color: Constants.MainColor,),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'الإعدادات',
                    ),
                  ),
                ),
                trailing: Icon(Icons.settings,color: Constants.MainColor,),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),

    );
  }

  // _confirmLogoutDialog_______________________________________________________

  // void _confirmLogoutDialog() {
  //   showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text(
  //             'تأكيد تسجيل الخروج',
  //             textAlign: TextAlign.end,
  //           ),
  //           content: Text(
  //             'هل أنت متأكد ؟',
  //             textAlign: TextAlign.end,
  //           ),
  //           actions: [
  //             TextButton(
  //                 onPressed: () {
  //                   Future.delayed(Duration(microseconds: 500 ), (){
  //                     Navigator.pushNamed(context , '/login_screen');
  //                   });                  },
  //                 child: Text(
  //                   'تأكيد',
  //                 )),
  //             TextButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('الغاء',)),
  //           ],
  //         );
  //       });
  // }

}
