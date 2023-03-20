
import 'package:flutter/material.dart';
import 'package:suqle_app/Shared/Component/HomeComponent.dart';
import 'package:suqle_app/Shared/Constant/constant.dart';

import '../../Navigate/Drawer/DrawerScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//AppBar________________________________________________________________________
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Taswaq"),
        titleTextStyle: TextStyle(
            color: Constants.MainColor,
            fontWeight: FontWeight.bold,
            fontSize: 22),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Constants.MainColor),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
              color: Constants.MainColor),
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(
                    Icons.menu,
                    color: Constants.MainColor,
                    size: 30,
                  ));
            },
          ),
        ],
      ),

//Drawer________________________________________________________________________
      endDrawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
//First section (Time && Tax)___________________________________________________
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'رسوم التوصيل\n'
                      'شيكل 6',
                      textAlign: TextAlign.end,
                      maxLines: null,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 1.0,
                      height: 50.0,
                      color: Constants.MainColor,
                    ),
                    Text(
                      "وقت التوصيل\n"
                      "20 دقيقة",
                      textAlign: TextAlign.end,
                      maxLines: null,
                    ),
                  ],
                ),

//Second section (Search)
              ),

//Second section (Search)_______________________________________________________
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  textInputAction: TextInputAction.search,
                  textAlign: TextAlign.end,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        icon: Icon(Icons.search_rounded),
                        onPressed: () {},
                        alignment: Alignment.centerRight),
                    prefixIconColor: Constants.MainColor,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "...ابحث عن المنتج",
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Constants.MainColor, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
              ),

//Third section (Title of Categories)___________________________________________
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "التصنيفات",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

//Fourth section (Categories)___________________________________________________
              Container(
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.6,
                  children: [
                    Categ(
                        img: AssetImage("assets/images/cocolat.png"),
                        title: "حلويات"),
                  ],
                ),
              ),

//Fife section (Title of More Popular)___________________________________________________
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                child: Text(
                  "الاكثر رواجا",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                height: 200,
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.35,
                  children: [
                    Post(img: AssetImage("assets/images/cocacola.png"), title: "CokaCola",prise: "10\$"),
                    Post(img: AssetImage("assets/images/cocacola.png"), title: "CokaCola",prise: "10\$"),
                    Post(img: AssetImage("assets/images/frut.png"), title: "CokaCola",prise: "10\$"),
                  ],
                ),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.all(10),
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.35,
                  children: [
                    Post(img: AssetImage("assets/images/cocacola.png"), title: "CokaCola",prise: "10\$"),
                    Post(img: AssetImage("assets/images/cocacola.png"), title: "CokaCola",prise: "10\$"),
                    Post(img: AssetImage("assets/images/frut.png"), title: "CokaCola",prise: "10\$"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
