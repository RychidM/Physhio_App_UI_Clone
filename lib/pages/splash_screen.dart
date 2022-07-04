import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:physio_app/misc/colors.dart';
import 'package:physio_app/pages/dashboard.dart';
import 'package:physio_app/pages/nav_menu_page.dart';
import 'package:physio_app/widgets/large_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List images = [
    "wel-doc.png",
    "wel-doc-one.png",
    "wel-doc-two.png",
  ];
  List text = [
    "Get answers from reliable doctors",
    "Find reliable health information ",
    "Start your physical therapy here!",
  ];
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              color: Colors.white,
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "imgs/" + images[index],
                        ),
                      )),
                    ),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Container(
                      width: 250,
                      child: LargeText(
                        text: text[index],
                        size: 20,
                        color: AppColors.textColor,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment(0, .8),
                          child: SmoothPageIndicator(
                              effect: ExpandingDotsEffect(
                                activeDotColor: AppColors.primaryColor,
                                dotColor:
                                    AppColors.primaryColor.withOpacity(.3),
                                dotHeight: 10,
                                dotWidth: 10,
                              ),
                              controller: _controller,
                              count: 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  onLastPage
                      ? Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.primaryColor),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return NavMenuPage();
                                  },
                                ),
                              );
                            },
                            child: Center(
                              child: Text(
                                "Lest Start!",
                                style: GoogleFonts.josefinSans(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.primaryColor),
                          child: GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                            },
                            child: Center(
                              child: Text(
                                "Next",
                                style: GoogleFonts.josefinSans(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        )
                ],
              ),
            );
          }),
    );
  }
}
