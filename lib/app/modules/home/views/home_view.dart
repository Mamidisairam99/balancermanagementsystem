// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 16,
        ),
        ListTile(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
            ),
            iconSize: 30.0,
          ),
          title: Text(
            "Kaveri Hills",
            style: theme.titleMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          subtitle: Text(
            "Banjara Hills,Hyderabad",
            style: theme.titleSmall!.copyWith(color: Colors.black),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_add_rounded,
                ),
                iconSize: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_pin),
                iconSize: 30.0,
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'My Vehicle',
                style: theme.titleMedium!
                    .copyWith(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Container(
            height: MediaQuery.of(context).size.height / 15.0,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  controller.showCitySelectionSheet(context);
                },
                child: Card(
                  child: Center(
                    child: Text(
                      'Select Date&Time ',
                      style: theme.titleMedium!.copyWith(fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ))
      ],
    ));

    
  }
}
