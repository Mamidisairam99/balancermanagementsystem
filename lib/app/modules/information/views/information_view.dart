// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_vehicle_proj/app/core/app_config/app_colors.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    final ttheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Obx(() => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 25.0),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Image.asset(
                        'assets/image.png',
                        height: MediaQuery.of(context).size.height / 23.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text("Welocome to Balancers",
                          style: ttheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 32.0)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Text("Partners!",
                          style: ttheme.titleMedium!.copyWith(
                              fontWeight: FontWeight.bold, fontSize: 32.0)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 30.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              color: Appcolors.darkBlue,
                              value: 0.3,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              color: Appcolors.darkBlue,
                              value: 0.0,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              color: Appcolors.darkBlue,
                              value: 0.0,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              color: Appcolors.darkBlue,
                              value: 0.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 85.0,
                          width: 85,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('assets/hire.png'),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  const Text('Person')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 85.0,
                          width: 85,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('assets/Career.png'),
                                  const SizedBox(
                                    height: 3.0,
                                  ),
                                  const Text('Work')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 85.0,
                          width: 85,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('assets/Check List 1.png'),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  const Text('Doc')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: Text("First Name"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              hintText: "Enter Your First Name")),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: Text("Last Name"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              hintText: "Enter Your Last Name")),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Gender",
                                style: ttheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio<String>(
                                activeColor: Appcolors.darkBlue,
                                value: 'Male',
                                groupValue: controller.selectedGender.value,
                                onChanged: (String? value) {
                                  if (value != null) {
                                    controller.updateGender(value);
                                  }
                                },
                              ),
                              const Text('Male'),
                              const SizedBox(width: 20),
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Appcolors.darkBlue,
                                    value: 'Female',
                                    groupValue: controller.selectedGender.value,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        controller.updateGender(value);
                                      }
                                    },
                                  ),
                                  const Text('Female'),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Appcolors.darkBlue,
                                    value: 'Other',
                                    groupValue: controller.selectedGender.value,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        controller.updateGender(value);
                                      }
                                    },
                                  ),
                                  const Text('Other'),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 120.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0),
                          child: Text("Martial Status",
                              style: ttheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Appcolors.darkBlue,
                                    value: 'single',
                                    groupValue:
                                        controller.selectedMartialStaus.value,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        controller.updateStatus(value);
                                      }
                                    },
                                  ),
                                  const Text('Single'),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Row(
                                children: [
                                  Radio<String>(
                                    activeColor: Appcolors.darkBlue,
                                    value: 'Married',
                                    groupValue:
                                        controller.selectedMartialStaus.value,
                                    onChanged: (String? value) {
                                      if (value != null) {
                                        controller.updateStatus(value);
                                      }
                                    },
                                  ),
                                  const Text('Married'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Appcolors.darkBlue)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text('Next',
                                  style: ttheme.titleMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.0,
                                      color: Colors.white)),
                            ))
                      ],
                    )
                  ]),
            )));
  }
}
