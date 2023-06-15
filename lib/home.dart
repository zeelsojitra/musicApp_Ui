import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List icons = [
    Icons.home_filled,
    Icons.bookmark,
    Icons.lock,
    Icons.settings,
  ];
  List<Map<String, dynamic>> music = [
    {'img': 'asserts/images/gym.jpg'},
    {'img': 'asserts/images/music.jpg'},
    {'img': 'asserts/images/music1.jpg'},
    {'img': 'asserts/images/music2.jpg'},
    {'img': 'asserts/images/music3.jpg'},
    {'img': 'asserts/images/music4.jpg'},
  ];
  int color = 0;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e1e2a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff282738),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            'asserts/images/menu.png',
                            color: Colors.white70,
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff282738),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white70,
                            size: 25,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Which book do\nyou want to buy?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Serch book',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            fillColor: Color(0xff2c2b39),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              size: 25,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.tune_outlined,
                          color: Colors.white70,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Popular Books',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: music.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 230,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage(
                                music[index]['img'],
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 280, left: 15, right: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'FITNESS GYM',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '\$15.00',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    like = !like;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkResponse(
                                      child: like == true
                                          ? Icon(
                                              Icons.favorite,
                                              color: Colors.white,
                                              size: 35,
                                            )
                                          : Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 35,
                                            )),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff282b3c),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                          4,
                          (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    color = index;
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: color == index
                                        ? Colors.red
                                        : Color(0xff1e1e2a),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    icons[index],
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
