import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_for_6_may/pages/box.dart';
import 'package:task_for_6_may/pages/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Sidebar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
           pinned: true,
            actions: [
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
                child: Container(
                  child: Center(
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.width * 0.02),
                      color: Colors.white38),
                ),
              ),
            ],
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            backgroundColor: Colors.black,
            title: Text(
              'Apple Products',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                ),
                child: Container(
                  color: Colors.black,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image(
                              image: AssetImage('assets/img.png'),
                              height: MediaQuery.of(context).size.height * 0.3,
                              fit: BoxFit.cover,
                            )),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                          Center(
                            child: Text(
                              'Lifestyle sale',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 36),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.03,
                                left: 50,
                                right: 50),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(color: Colors.grey.shade700),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
         Box(img1Url: 'assets/img_2.png', img2Url: 'assets/img_1.png'),
         Box(img1Url: 'assets/img.png', img2Url: 'assets/img_3.png'),
         Box(img1Url: 'assets/img_5.png', img2Url: 'assets/img_4.png'),
          Box(img1Url: 'assets/img_2.png', img2Url: 'assets/img_1.png'),
          Box(img1Url: 'assets/img.png', img2Url: 'assets/img_3.png'),
          Box(img1Url: 'assets/img_5.png', img2Url: 'assets/img_4.png'),
          Box(img1Url: 'assets/img_2.png', img2Url: 'assets/img_1.png'),
          Box(img1Url: 'assets/img.png', img2Url: 'assets/img_3.png'),
          Box(img1Url: 'assets/img_5.png', img2Url: 'assets/img_4.png'),],
      ),
    );
  }
}
