import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:physio_app/misc/colors.dart';
import 'package:physio_app/widgets/app_text.dart';
import 'package:physio_app/widgets/large_text.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var symptoms = {
    "wink.png": "I'm fine",
    "sick.png": "Sneeze",
    "sick-1.png": "Fever",
    "tired.png": "Fatigue",
    "vomit.png": "Nauseous"
  };

  var therapists = {
    "Dr. Anya Taylor Joy": "physiotherapist",
    "Dr. Michael Gray": "therapist",
    "Dr. Maria Johnson": "therapist",
    "Dr. Samuel Smith": "therapist",
    "Dr. Steven Strange": "physiotherapist",
    "Dr. Polly Gray": "physiotherapist"
  };

  var ratings = {
    "doc-one.png": "5.0",
    "doc-two.png": "4.9",
    "doc-three.png": "4.0",
    "doc-four.png": "4.4",
    "doc-five.png": "5.0",
    "doc-six.png": "4.7"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // bell&user profile at top
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.shadowColor,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 7),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Icon(
                      FontAwesomeIcons.bell,
                      size: 20,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadowColor,
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 7),
                          )
                        ],
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Image(
                      image: AssetImage("imgs/user.png"),
                      height: 30,
                      width: 30,
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              // hello chris text
              Container(
                child: Row(
                  children: [
                    Container(
                        child: LargeText(
                      text: "Hello,",
                      size: 25,
                      color: AppColors.textColor.withOpacity(.4),
                    )),
                    SizedBox(width: 5),
                    Container(
                      child: LargeText(
                        text: "Chris",
                        color: AppColors.textColor,
                        size: 25,
                      ),
                    ),
                    Container(
                      child: Image(
                        image: AssetImage("imgs/waving-hand.png"),
                        height: 25,
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              //  Grid boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryColor.withOpacity(.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30, right: 70),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: Image(
                            image: AssetImage("imgs/train.png"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Align(
                            alignment: Alignment(-.4, 0),
                            child: Text(
                              "Start training",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondaryColor,
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.secondaryColor,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30, right: 70),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.primaryColor,
                          ),
                          child: Image(
                            image: AssetImage("imgs/checklist.png"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Align(
                            alignment: Alignment(-.4, 0),
                            child: Text(
                              "Your treatment \n plan",
                              style: TextStyle(
                                color: AppColors.textColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: LargeText(
                        text: "What are your symptoms?",
                        size: 17,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      width: double.maxFinite,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: symptoms.length,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 20),
                                  width: 120,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.secondaryColor
                                        .withOpacity(.5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Image(
                                          image: AssetImage(
                                            "imgs/" +
                                                symptoms.keys.elementAt(index),
                                          ),
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      SmallText(
                                        text: symptoms.values.elementAt(index),
                                        size: 14,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Popular therapists
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LargeText(
                    text: "Popular therapists",
                    size: 17,
                  ),
                  SmallText(
                    text: "See all",
                    size: 12,
                    color: AppColors.textColor.withOpacity(.4),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: double.maxFinite,
                child: ListView.builder(
                    itemCount: symptoms.length,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          Center(
                            child: Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                width: double.maxFinite,
                                height: 90,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.shadowColor,
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: const Offset(0, 7),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image(
                                        image: AssetImage("imgs/" +
                                            ratings.keys.elementAt(index)),
                                        height: 40,
                                        width: 40),
                                    Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          LargeText(
                                            text: therapists.keys
                                                .elementAt(index),
                                            size: 14,
                                          ),
                                          SizedBox(height: 5),
                                          SmallText(
                                              text: therapists.values
                                                  .elementAt(index),
                                              size: 12,
                                              color: AppColors.textColor
                                                  .withOpacity(.4)),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: AppColors.primaryColor,
                                        ),
                                        SizedBox(width: 7),
                                        SmallText(
                                          text: ratings.values.elementAt(index),
                                          size: 12,
                                          color: AppColors.textColor
                                              .withOpacity(.4),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
