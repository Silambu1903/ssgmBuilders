import 'package:flutter/material.dart';
import 'package:smgbuilders/helper/myText.dart';

class BannerScreen extends StatefulWidget {
  const BannerScreen({Key? key}) : super(key: key);

  @override
  _BannerScreenState createState() => _BannerScreenState();
}

class _BannerScreenState extends State<BannerScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: 0.3,
                        ),
                        Expanded(
                          flex: 10,
                          child: Row(
                            children: [
                              MyText(
                                text: 'HOME',
                                myFontWeight: FontWeight.bold,
                                myColors: (0XFFFFFFFF),
                                myFontSize: 60.0,
                              ),
                              MyText(
                                text: 'ABOUT US',
                              ),
                              MyText(
                                text: 'OUR SERVICE',
                              ),
                              MyText(text: 'PORTFOLIO'),
                              MyText(text: 'CONTACT US'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          height: 0.3,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 8,
                    child: Row(
                      children: [],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            height: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
