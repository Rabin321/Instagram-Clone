import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/add.dart';

import 'package:instagram/screens/myProfile.dart';
import 'package:instagram/screens/search.dart';
import 'package:instagram/screens/shop.dart';
import 'instagrambody.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
    toolbarHeight: 62,
    title: SizedBox(
      height: 46.0,
      // width: 120,
      child: Image.asset("assets/logo.png"),
    ),

    // actions: [
    //   Padding(padding: const EdgeInsets.only(right:19),
    //    child: Icon(FontAwesomeIcons.facebookMessenger),

    //    ),
    //    child: Icon(icon)],
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 7.0),
        child: IconButton(
            icon: const Icon(
              Icons.favorite_outline_sharp,
              size: 32,
            ),
            onPressed: () {}),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 7.0, top: 4),
        child: IconButton(
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
              size: 27,
            ),
            onPressed: () {}),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar, body: InstaBody(), bottomNavigationBar: Botnavbar());
  }
}

class Botnavbar extends StatefulWidget {
  const Botnavbar({Key key}) : super(key: key);

  @override
  _BotnavbarState createState() => _BotnavbarState();
}

class _BotnavbarState extends State<Botnavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  size: 37,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home();
                  }));
                }),
            IconButton(
                icon: Icon(
                  Icons.search,
                  size: 37,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Search();
                  }));
                }),
            IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 37,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Activity();
                  }));
                }),
            IconButton(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                  size: 37,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Shop()),
                  );
                }),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: CircleAvatar(
                  radius: 15,
                  backgroundImage: NetworkImage(
                      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202105/1229892934.0_1200x768.jpeg?XTvRR2iw2fgvqX9UIE6mEpPHNEOP.Vdf&size=770:433"),
                ),
              ),
            ),
            // IconButton(
            //     icon: Icon(
            //       Icons.account_circle_outlined,
            //       size: 37,
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => MyProfile()),
            //       );
            //     }),
          ],
        ),
      ),
    );
  }
}
