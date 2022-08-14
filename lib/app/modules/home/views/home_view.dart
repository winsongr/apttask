import 'package:apttask/app/data/assets.dart';
import 'package:apttask/app/data/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var textsmallTheme = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(color: CColour.text, fontWeight: FontWeight.w500);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
              width: Get.width * 0.0002,
              child: Image.asset(
                Assets.drawer,
                fit: BoxFit.contain,
              )),
        ),
        title: Image.asset(
          Assets.appbar,
          width: Get.width * 0.3,
        ),
        backgroundColor: CColour.white,
        elevation: 0,
        toolbarHeight: 65,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Earning", style: textsmallTheme),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        7,
                      ),
                      border:
                          Border.all(color: const Color(0xffE5E5E5), width: 2)),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              7,
                            ),
                            border: Border.all(
                                color: const Color(0xffE5E5E5), width: 1)),
                        child: Image.asset(
                          Assets.coin,
                          width: Get.width * 0.06,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: ' 100',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: CColour.textb,
                                    fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(text: ' Coins', style: textsmallTheme)
                            ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: Get.width * 0.78,
                      height: Get.width * 0.15,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search here',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14))),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: Get.width * 0.13, child: Image.asset(Assets.menu))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: CColour.textb, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See all',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: CColour.pink, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: SizedBox(
                    width: Get.width,
                    child: Row(
                      children: [Text('Full stack Development')],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Courses',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: CColour.textb, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See all',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: CColour.pink, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width,
                height: Get.height,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: SizedBox(
                          width: Get.width,
                          child: ListTile(
                            leading: SizedBox(
                                child: Image.asset(
                              Assets.lap,
                            )),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffF4F4F4),
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 3),
                                    child: Text(
                                      "Programming",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: CColour.pink,
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Icon(
                                    Icons.bookmark_add,
                                    color: Color(0xffC4C4C4),
                                  )
                                ],
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "Full stack Development",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color: CColour.textb,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          width: 15,
                                          child: Image.asset(Assets.degree)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "500 Students",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                                color: CColour.text,
                                                fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
