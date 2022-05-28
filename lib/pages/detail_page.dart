import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

import '../widgets/app_buttons.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                  left: 20,
                  top: 50,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ],
                  )),
              Positioned(
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  )),
              Positioned(
                  top: 300,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                                text: "Yosemite",
                                color: Colors.black.withOpacity(0.8)),
                            AppLargeText(
                                text: "\$ 250", color: AppColors.mainColor),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.mainColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AppText(
                                text: "USA , California",
                                color: AppColors.textColor1),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(
                                    5,
                                    (index) => Icon(
                                          Icons.star,
                                          color: gottenStars > index
                                              ? AppColors.starColor
                                              : AppColors.textColor2,
                                        ))),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "(4.0)",
                              color: AppColors.textColor2,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        AppLargeText(
                          text: "People",
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        AppText(
                            text: "Number of People in your group",
                            color: AppColors.mainTextColor),
                        SizedBox(
                          height: 5,
                        ),
                        Wrap(
                            children: List.generate(
                                5,
                                (index) => InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: AppButtons(
                                          size: 50,
                                          color: selectedIndex == index
                                              ? Colors.white
                                              : Colors.black,
                                          backgroundColor:
                                              selectedIndex == index
                                                  ? Colors.black
                                                  : AppColors.buttonBackground,
                                          borderColor: selectedIndex == index
                                              ? Colors.black
                                              : AppColors.buttonBackground,
                                          text: (index + 1).toString(),
                                          // icon: Icons.favorite_border,
                                          // isIcon: true,
                                        ),
                                      ),
                                    ))),
                        SizedBox(
                          height: 10,
                        ),
                        AppLargeText(
                            text: 'Description',
                            color: Colors.black.withOpacity(0.8)),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                          text:
                              'you must go traveling . travel helps get rid of pressure and sknjd sn jsnknala',
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      AppButtons(
                        size: 60,
                        color: AppColors.textColor2,
                        backgroundColor: Colors.white,
                        borderColor: AppColors.textColor2,
                        icon: Icons.favorite_border,
                        isIcon: true,
                      ),
                      SizedBox(width: 10,),
                      ResponsiveButton(
                        isResponsive: true,
                        text: 'Book Trip Now',
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
