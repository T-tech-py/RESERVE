import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 24.h, left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/Rectangle5.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Stella",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          "Let's reserve a table for you",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(children: [
                  Positioned(
                    child: IconButton(
                        icon: Icon(
                          Icons.notifications_sharp,
                          color: Colors.black,
                          size: 35,
                        ),
                        onPressed: () {}),
                  ),
                  Positioned(
                      left: 32,
                      bottom: 27,
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      )),
                ]),
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 40.h,
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12),
                  hintText: "Search Resturants",
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 17.h,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 200.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                      resturantName: "Eatee",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle 1.png"),
                  SizedBox(width: 16.w),
                  MyCard(
                      resturantName: "Cuisine",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle3.png"),
                  SizedBox(width: 16.w),
                  MyCard(
                      resturantName: "Crofty Pub",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle4.png")
                ],
              ),
            ),
            SizedBox(height: 33.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Close to you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(height: 9.h),
            SizedBox(
              height: 200.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                      resturantName: "Eatee",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle1.png"),
                  SizedBox(width: 16.w),
                  MyCard(
                      resturantName: "Cuisine",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle3.png"),
                  SizedBox(width: 16.w),
                  MyCard(
                      resturantName: "Crofty Pub",
                      address: "38 Riverview, Richardson.",
                      rating: 3.2,
                      resturantPictureUrl: "images/Rectangle4.png")
                ],
              ),
            ),
            SizedBox(height: 33.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Resturants",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Icon(
                  CupertinoIcons.arrow_right,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(height: 9.h),
            Row(
              children: [
                Column(
                  children: [
                    MyCard(
                        resturantName: "",
                        address: "",
                        rating: 0.0,
                        resturantPictureUrl: "images/hack.png")
                  ],
                ),
                Column()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 56.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home_filled,
                  color: Colors.orange[700],
                  // size: 14.25,
                ),
                SizedBox(height: 4.5.h),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.orange[700]),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 2),
                Text(
                  "Location",
                  style: TextStyle(color: Colors.grey[300]),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.home_repair_service_outlined,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 2),
                Text(
                  "Reservations",
                  style: TextStyle(color: Colors.grey[300]),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 2),
                Text(
                  "Favourites",
                  style: TextStyle(color: Colors.grey[300]),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String resturantPictureUrl;
  final String resturantName;
  final String address;
  final double rating;

  const MyCard(
      {@required this.resturantName,
      @required this.address,
      @required this.rating,
      @required this.resturantPictureUrl});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110.w,
          height: 110.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(
                resturantPictureUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Text(resturantName,
            style: TextStyle(
              fontSize: 14,
            )),
        SizedBox(height: 3.h),
        Text(address, style: TextStyle(fontSize: 10)),
        SizedBox(height: 5.h),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow[800],
              size: 13.w,
            ),
            SizedBox(width: 5.h),
            Text(
              rating.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}
