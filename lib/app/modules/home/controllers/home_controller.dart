// ignore_for_file: unused_local_variable, sized_box_for_whitespace, unnecessary_overrides

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_vehicle_proj/app/core/app_config/app_colors.dart';

class HomeController extends GetxController {
  final datesList = [
    {'day': 'MON', 'date': '11', 'slots': '12 slots'},
    {'day': 'TUE', 'date': '11', 'slots': '12 slots'},
    {'day': 'WED', 'date': '11', 'slots': '12 slots'},
    {'day': 'THU', 'date': '11', 'slots': '12 slots'},
    {'day': 'FRI', 'date': '11', 'slots': '12 slots'},
    {'day': 'SAT', 'date': '11', 'slots': '12 slots'},
    {'day': 'SUN', 'date': '11', 'slots': '12 slots'},
  ];

  final timeList = [
    {
      'time': '11.00 AM',
    },
    {
      'time': '12.00 PM',
    },
    {
      'time': '10.00 AM',
    },
    {
      'time': '09.00 AM',
    },
    {
      'time': '04.00 PM',
    },
    {
      'time': '06.00 AM',
    },
    {
      'time': '08.00 AM',
    },
  ];
  void showCitySelectionSheet(BuildContext context) {
    final ttheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Get.bottomSheet(
      persistent: false,
      backgroundColor: Colors.white,
      GestureDetector(
          // onTap: () {
          //   searchFocusNode.unfocus();
          // },
          child: Container(
              height: 900,
              decoration: const BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_drop_down),
                                  label: const Text('select_dates')),
                            ),
                          ),
                          Row(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    child: const Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Appcolors.darkBlue,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 30.0,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.0)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    child: const Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Appcolors.darkBlue,
                                    ),
                                  ),
                                ))
                          ])
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          height: 190,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          4, // Number of columns in the grid
                                      crossAxisSpacing:
                                          8.0, // Space between columns
                                      mainAxisSpacing: 8.0,
                                      childAspectRatio:
                                          1.0 // Space between rows
                                      ),
                              itemCount:
                                  datesList.length, // Total number of items
                              itemBuilder: (context, index) {
                                final dates = datesList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 180.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.grey.withOpacity(0.5)),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(dates['day'].toString()),
                                        Text(dates['date'].toString()),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.circle,
                                              size: 5.0,
                                              color: Colors.amber,
                                            ),
                                            const SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(dates['slots'].toString())
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          height: 100,
                          // color: Colors.amber,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount:
                                          4, // Number of columns in the grid
                                      crossAxisSpacing:
                                          4.0, // Space between columns
                                      mainAxisSpacing: 4.0,
                                      childAspectRatio:
                                          1.9 // Space between rows
                                      ),
                              itemCount:
                                  datesList.length, // Total number of items
                              itemBuilder: (context, index) {
                                final time = timeList[index];
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.5,
                                          color: Colors.grey.withOpacity(0.5)),
                                      borderRadius: BorderRadius.circular(2.0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [Text(time['time'].toString())],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                      const SizedBox(
                        height: 13.0,
                      ),
                      TextButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Appcolors.darkBlue)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Text('Next',
                                style: ttheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0,
                                    color: Colors.white)),
                          ))
                    ],
                  ),
                ),
              ))),

      // child: Column(
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //           vertical: height * 0.01685, horizontal: width * 0.03571),
      //       child: TextField(
      //         // focusNode: searchFocusNode,
      //         decoration: InputDecoration(
      //           contentPadding: EdgeInsets.all(0.0),
      //           hintText: 'Search City',
      //           // hintStyle: GoogleFonts.lato(
      //           //     fontSize: height * 0.02,
      //           //     fontWeight: FontWeight.w400,
      //           //     color: Colors.blueGrey.shade900),
      //           prefixIcon: Icon(Icons.search),
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(8.0),
      //           ),
      //         ),
      //         onChanged: (value) {
      //           // searchQuery.value = value;
      //         },
      //         onSubmitted: (value) {
      //           // searchFocusNode.unfocus();
      //         },
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(
      //         bottom: height * 0.01264,
      //       ),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Popular Cities',
      //             style: GoogleFonts.lato(
      //                 fontSize: height * 0.02,
      //                 fontWeight: FontWeight.w600,
      //                 color: Colors.blueGrey.shade900),
      //           )
      //         ],
      //       ),
      //     ),
      //     SizedBox(
      //       height: height * 0.0158,
      //     ),
      //     Expanded(
      //         child: Obx(
      //       () => GridView.builder(
      //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //             crossAxisCount: 3,
      //             mainAxisSpacing: 4,
      //             crossAxisSpacing: 2,
      //             childAspectRatio: 1.4),
      //         itemCount: searchedItems.length,
      //         itemBuilder: (context, index) {
      //           return GestureDetector(
      //             onTap: () {
      //               Get.back(result: searchedItems[index]['cityName']);
      //             },
      //             child: Column(
      //               children: [
      //                 Image.asset(
      //                   searchedItems[index]['city'],
      //                   height: height * 0.06320,
      //                   width: width * 0.13392,
      //                 ),
      //                 SizedBox(
      //                   height: height * 0.0105,
      //                 ),
      //                 Text(searchedItems[index]["cityName"],
      //                     style: GoogleFonts.lato(
      //                         fontSize: height * 0.016,
      //                         fontWeight: FontWeight.w400,
      //                         color: Colors.blueGrey.shade900)),
      //               ],
      //             ),
      //           );
      //         },
      //       ),
      //     )),
      //   ],
      // ),
    );

    // .then((selectedCity) {
    //   if (selectedCity != null) {
    //     changedCity(selectedCity);
    //     print(selectedCity);
    //   }
    // });
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
