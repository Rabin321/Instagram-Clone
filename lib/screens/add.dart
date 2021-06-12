import 'package:flutter/material.dart';
import 'package:instagram/Home.dart';

class Activity extends StatelessWidget {
  Widget _buildNotification({
    String likerpicurl,
    String likername,
    String text,
    String time,
    String myposturl,
  }) =>
      SingleChildScrollView(
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(likerpicurl),
          ),
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: likername,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                TextSpan(
                    text: text,
                    style: TextStyle(fontSize: 16.0, color: Colors.black)),
                TextSpan(
                  text: time,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          trailing: Container(
            height: 43,
            width: 43,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(myposturl))),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activity",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Botnavbar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            child: Text(
              "New",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            ),
          ),
          _buildNotification(
            likerpicurl:
                "https://cdn.vox-cdn.com/thumbor/82lbgDp2RfnpNIRjL5ack0oRntI=/0x0:5315x3543/1200x800/filters:focal(2012x793:2862x1643)/cdn.vox-cdn.com/uploads/chorus_image/image/69153080/1178141587.jpg.0.jpg",
            likername: "zukey_dai",
            text: " liked your photo.",
            time: " 20h",
            myposturl:
                "https://content.fortune.com/wp-content/uploads/2020/11/BPO01.21.gettyimages-1183851343-2048x2048-1.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            child: Text(
              "Yesterday",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            ),
          ),
          _buildNotification(
            likerpicurl:
                "https://assets.weforum.org/article/image/eIfUdHtdWKZdMknticwwupD1Xm81xkKnutNNcwAZTyg.JPG",
            likername: "Billgates",
            text: " commented: Damn!!",
            time: " 1d",
            myposturl:
                "https://content.fortune.com/wp-content/uploads/2020/11/BPO01.21.gettyimages-1183851343-2048x2048-1.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          _buildNotification(
            likerpicurl:
                "https://ca-times.brightspotcdn.com/dims4/default/bec99d7/2147483647/strip/true/crop/2000x2706+0+0/resize/840x1137!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fff%2F2c%2Fdedf568e4af087cab5f0a5c76f32%2Fla-ca-bk-a-promised-land-barack-obama-183.JPG",
            likername: "don_obama",
            text: " liked your photo.",
            time: " 1d",
            myposturl:
                "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202106/bit111.png?BBdPRYHWK3Rae6ztt2LaZvqB8zmaDGJ7&size=770:433",
          ),
          SizedBox(
            height: 20,
          ),
          _buildNotification(
            likerpicurl:
                "https://upload.wikimedia.org/wikipedia/commons/3/3b/Johnny_Depp-2757_%28cropped%29.jpg",
            likername: "Deep_johnny",
            text: " liked your photo.",
            time: "1d",
            myposturl:
                "https://www.clydefitchreport.com/wp-content/uploads/2018/07/ElonMusk.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
            child: Text(
              "This Week",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
            ),
          ),
          _buildNotification(
            likerpicurl:
                "https://upload.wikimedia.org/wikipedia/commons/5/56/Donald_Trump_official_portrait.jpg",
            likername: "trump_do",
            text: " commented: Good going. Keep it up my boy",
            time: " 3d",
            myposturl:
                "https://static01.nyt.com/images/2021/01/07/business/07econ-briefing-musk/07econ-briefing-musk-mediumSquareAt3X.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          _buildNotification(
            likerpicurl:
                "https://pbs.twimg.com/profile_images/1070084370696794112/ecpXIUeY_400x400.jpg",
            likername: "dead_man",
            text: " liked your photo.",
            time: " 3d",
            myposturl:
                "https://i-invdn-com.akamaized.net/news/ElonMusk_800x533_L_1613481464.jpg",
          ),
          SizedBox(
            height: 20,
          ),
          _buildNotification(
            likerpicurl:
                "https://images.beinsports.com/2hm4hbNSxkgBCKIoQCfke2iC7Ck=/full-fit-in/1000x0/david-beckham-cropped_bjvprff3zv6czq3ckhz9r450.jpg",
            likername: "beckham_david",
            text: " liked your photo.",
            time: " 4d",
            myposturl:
                "https://gumlet.assettype.com/bloombergquint%2F2018-02%2Fecc35959-0819-4813-a755-a9f5d9059fb9%2Fheavy%20falcon.jpg?rect=0%2C0%2C1111%2C800&auto=format%2Ccompress&w=1200",
          ),
          SizedBox(
            height: 20,
          ),
          _buildNotification(
            likerpicurl:
                "https://ca-times.brightspotcdn.com/dims4/default/bec99d7/2147483647/strip/true/crop/2000x2706+0+0/resize/840x1137!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fff%2F2c%2Fdedf568e4af087cab5f0a5c76f32%2Fla-ca-bk-a-promised-land-barack-obama-183.JPG",
            likername: "don_obama",
            text: " liked your photo.",
            time: " 1d",
            myposturl:
                "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202106/bit111.png?BBdPRYHWK3Rae6ztt2LaZvqB8zmaDGJ7&size=770:433",
          ),
        ],
      ),
    );
  }
}
