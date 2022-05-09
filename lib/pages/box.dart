import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  const Box({required this.img1Url, required this.img2Url, Key? key})
      : super(key: key);
  final String img1Url;
  final String img2Url;

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool forColor1 = true;
  bool forColor2 = true;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.025,
            top: MediaQuery.of(context).size.width * 0.01,
            bottom: MediaQuery.of(context).size.width * 0.025),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(widget.img1Url),
                      height: MediaQuery.of(context).size.width * 0.45,
                      width: MediaQuery.of(context).size.width * 0.45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.001,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  forColor1 = !forColor1;
                                });
                              },
                              icon: forColor1
                                  ? Icon(
                                      Icons.star_border_purple500_sharp,
                                      size: 35,
                                      color: Colors.amber,
                                    )
                                  : Icon(
                                      Icons.star,
                                      size: 35,
                                      color: Colors.amber,
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(widget.img2Url),
                      height: MediaQuery.of(context).size.width * 0.45,
                      width: MediaQuery.of(context).size.width * 0.45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.001,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  forColor2 = !forColor2;
                                });
                              },
                              icon: forColor2
                                  ? Icon(
                                      Icons.star_border_purple500_sharp,
                                      size: 35,
                                      color: Colors.amber,
                                    )
                                  : Icon(
                                      Icons.star,
                                      size: 35,
                                      color: Colors.amber,
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
