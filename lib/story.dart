import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final bottomText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 17, top: 10),
        child: Text(
          "Your Story",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
    ],
    // children: [
    //   ListView.builder(
    //     itemCount: 5,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => Padding(
    //       padding: const EdgeInsets.only(left: 17, top: 10),
    //       child: new Text(
    //         "Your Story",
    //         style: TextStyle(fontSize: 15, color: Colors.black),
    //       ),
    //     ),
    //   ),
    // ],
  );

  // for stories

  final stories = Expanded(
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => new Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 3,
                        ),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202105/1229892934.0_1200x768.jpeg?XTvRR2iw2fgvqX9UIE6mEpPHNEOP.Vdf&size=770:433"))),
                    margin: const EdgeInsets.symmetric(horizontal: 14.0),
                  ),
                  index == 0
                      ? Positioned(
                          right: 10,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.blue[600],
                              radius: 12.0,
                              child: Icon(
                                Icons.add,
                                size: 21,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.red,
                                width: 3,
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUZlFgLMbhIm7PalKprcHRxvkVWwccn6-kIs2sHRKyeYDjQLQ1LD31ipBkL5cE83VGPlI&usqp=CAU"))),
                          margin: const EdgeInsets.symmetric(horizontal: 14.0),
                        ),
                  if (index == 2)
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 3,
                          ),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://www.businessbecause.com/uploads/default/news/images/1611746171.png"))),
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                    ),
                  if (index == 3)
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 3,
                          ),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://specials-images.forbesimg.com/imageserve/5fa89f29bfcf8584f1f799ef/960x0.jpg?fit=scale"))),
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                    ),
                  if (index == 4)
                    Container(
                      width: 80.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 3,
                          ),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTieeIbkmzdX_b-ermylKsPkxOGNNJk1ZMGOws58la9ArnHiKgh2MqWw-AfU_MRoa0DVrw&usqp=CAU"))),
                      margin: const EdgeInsets.symmetric(horizontal: 14.0),
                    ),
                ],
              )));
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30, left: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          stories,
          bottomText,
        ],
      ),
    );
  }
}
