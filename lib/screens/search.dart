import 'package:flutter/material.dart';
import 'package:instagram/Home.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: TextField(
          style: TextStyle(fontSize: 20),
          autofocus: false,
          decoration: InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            // contentPadding:
            //     const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
            hintText: " Search...",
            border: InputBorder.none,
            prefixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Botnavbar(),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(
                color: Colors.grey[600]
                    .withOpacity((index / 10).clamp(0, 1).toDouble()),
                height: 100,
              );
            }),
          )
        ],
      ),
    );
  }
}
