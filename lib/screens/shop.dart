import 'package:flutter/material.dart';
import 'package:instagram/Home.dart';

class Shop extends StatelessWidget {
  const Shop({Key key}) : super(key: key);

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
            "Shop",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: IconButton(
                icon: const Icon(
                  Icons.perm_contact_calendar_outlined,
                  size: 31,
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
              ],
            ),
          ),
        ],
      ),
      // body: Container(
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Expanded(
      //         child: TextField(
      //           decoration: InputDecoration(
      //             prefixIcon: Icon(
      //               Icons.search,
      //               color: Colors.grey[700],
      //             ),
      //             fillColor: Colors.grey[300],
      //             filled: true,
      //             hintText: ' Search Shops',
      //             border: InputBorder.none,
      //             hintStyle: TextStyle(
      //               fontSize: 19,
      //               color: Colors.grey[700],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),

      // ),
      body: Container(
        // Row(
        //   mainAxisSize: MainAxisSize.max,
        //   children: [
        //     Expanded(
        //       child: TextField(
        //         decoration: InputDecoration(
        //           prefixIcon: Icon(
        //             Icons.search,
        //             color: Colors.grey[700],
        //           ),
        //           fillColor: Colors.grey[300],
        //           filled: true,
        //           hintText: ' Search Shops',
        //           border: InputBorder.none,
        //           hintStyle: TextStyle(
        //             fontSize: 19,
        //             color: Colors.grey[700],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        child: GridView.extent(
          maxCrossAxisExtent: 250,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
          children: <Widget>[
            Image.network(
                "https://5.imimg.com/data5/HD/VF/MT/ANDROID-31132887/product-jpeg-500x500.jpg"),
            Image.network("https://i.ytimg.com/vi/F5Zi-Dh43PE/hqdefault.jpg"),
            Image.network(
                "https://assets.manufactum.de/p/068/068675/68675_01.jpg/?profile=pdsmain_750"),
            Image.network(
                "https://media.wired.com/photos/5e911353798a15000821fedc/master/w_2560%2Cc_limit/Gear-XPS-13-open-right-SOURCE-Dell.jpg"),
            Image.network(
                "https://www.cnet.com/a/img/FxXj67Xfg3vF59H0oaKgXr_-e_Q=/2017/07/18/9409e1eb-23e3-4fde-a543-f11e7179cf20/laptops-dan-01.jpg"),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdcVSiOHWqzc1CKfCinMxT8cXXIucQMzeHmQ&usqp=CAU"),
            Image.network(
                "https://www.gardeningknowhow.com/wp-content/uploads/2012/03/houseplant-sansevieria.jpg"),
            Image.network(
                "https://www.godigit.com/content/dam/godigit/directportal/en/website-images/mobile-phone.jpg")
          ],
        ),
      ),

      bottomNavigationBar: Botnavbar(),

      //
      // child: GridView.extent(
      //   maxCrossAxisExtent: 250,
      //   crossAxisSpacing: 3.0,
      //   mainAxisSpacing: 3.0,
      //   children: <Widget>[
      //     Image.network("https://placeimg.com/500/500/any"),
      //     Image.network("https://placeimg.com/500/500/any"),
      //     Image.network("https://placeimg.com/500/500/any"),
      //     Image.network("https://placeimg.com/500/500/any"),
      //   ],
      // ),
    );
  }
}

class Shopsearching extends StatelessWidget {
  const Shopsearching({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 3),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[700],
                  ),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: ' Search Shops',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
