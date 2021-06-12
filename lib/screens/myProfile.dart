import 'package:flutter/material.dart';
import 'package:instagram/Home.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  Widget _buildHighlight({
    String highlighturl,
    String caption,
  }) =>
      Column(
        children: [
          Container(
            height: 74,
            width: 74,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(highlighturl),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            caption,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff8faf8),
        centerTitle: false,
        elevation: 1.0,
        toolbarHeight: 62.0,
        title: SizedBox(
          height: 29.0,
          child: Text(
            "elonmusk_101",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0, right: 65),
            child: IconButton(
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 37,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: IconButton(
                icon: const Icon(
                  Icons.add_box_outlined,
                  size: 33,
                ),
                onPressed: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 0.0,
              top: 4,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 7.0, top: 4),
                  child: IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 36,
                    ),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  right: 7,
                  top: 6,
                  child: CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundColor: Colors.red[600],
                      radius: 11.0,
                      child: Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 18),
                child: CircleAvatar(
                  radius: 49,
                  backgroundImage: NetworkImage(
                      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202105/1229892934.0_1200x768.jpeg?XTvRR2iw2fgvqX9UIE6mEpPHNEOP.Vdf&size=770:433"),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "540",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 19),
                          ),
                          Text(
                            "Posts",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "687k",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 19),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "40",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 19),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 11, left: 15),
            child: Row(
              children: [
                Text(
                  "elonmusk_101",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 9, left: 142, bottom: 9, right: 140),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black87,
                        width: 0.4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 17.0, left: 10),
            child: Row(
              children: [
                Text(
                  "Story Highlights",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: Icon(
                    Icons.arrow_drop_up_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  "Keep your favourite stories on your profile",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17.0),
                )
              ],
            ),
          ),
          Container(
            height: 120,
            margin: EdgeInsets.only(top: 16, bottom: 10),
            width: double.infinity,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 12),
              scrollDirection: Axis.horizontal,
              children: [
                _buildHighlight(
                    highlighturl:
                        "https://e3.365dm.com/18/09/2048x1152/skynews-elon-musk-weed_4414031.jpg",
                    caption: "high haha"),
                SizedBox(
                  width: 15,
                ),
                _buildHighlight(
                    highlighturl:
                        "https://www.railway-technology.com/wp-content/uploads/sites/24/2021/02/0_ZELEROS_Hyperloop.jpg",
                    caption: "Hyperloop"),
                SizedBox(
                  width: 15,
                ),
                _buildHighlight(
                  highlighturl:
                      "https://topicimages.mrowl.com/large/prithvi_c/elonmusk/personallife/family_1.jpg",
                  caption: "family",
                ),
                SizedBox(
                  width: 15,
                ),
                _buildHighlight(
                    highlighturl:
                        "https://cdni0.trtworld.com/w960/h540/q75/76923_USASpaceX_1587156063102.jpeg",
                    caption: "SpaceX"),
                SizedBox(
                  width: 15,
                ),
                _buildHighlight(
                  highlighturl:
                      "https://img-cdn.tnwcdn.com/image?fit=1280%2C720&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2020%2F09%2Fimage-1-6.png&signature=347c8a4d966a29231cec431cae704d60",
                  caption: "Neuralink",
                ),
                SizedBox(
                  width: 15,
                ),
                _buildHighlight(
                    highlighturl:
                        "https://www.teslarati.com/wp-content/uploads/2020/12/tesla-elon-musk-foundation-moves-to-texas-e1610039602601-1280x720.jpg",
                    caption: "Tesla"),
              ],
            ),
          ),
          TabBar(
            controller: _controller,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.grid_on_outlined,
                  color: Colors.black,
                  size: 31,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.portrait_sharp,
                  size: 31,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(48.0),
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.black54,
                strokeWidth: 3.5,
              ),
            ),
          )
          // TabBarView(
          //   children: [
          //     Image(
          //       image: NetworkImage(
          //           "https://content.fortune.com/wp-content/uploads/2020/11/BPO01.21.gettyimages-1183851343-2048x2048-1.jpg"),
          //     ),
          //     // Image(
          //     //   image: NetworkImage(
          //     //       "https://content.fortune.com/wp-content/uploads/2020/11/BPO01.21.gettyimages-1183851343-2048x2048-1.jpg"),
          //     // ),
          //     // Image(
          //     //     image: NetworkImage(
          //     //         "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202106/bit111.png?BBdPRYHWK3Rae6ztt2LaZvqB8zmaDGJ7&size=770:433"),
          //     //         ),
          //   ],
          // )
        ],
      ),
      bottomNavigationBar: Botnavbar(),
    );
  }
}
