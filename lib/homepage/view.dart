import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../to_do/view.dart';
import 'logic.dart';

class HomepagePage extends StatefulWidget {
  HomepagePage({Key? key}) : super(key: key);

  @override
  State<HomepagePage> createState() => _HomepagePageState();
}

class _HomepagePageState extends State<HomepagePage> {
  final logic = Get.put(HomepageLogic());

  final state = Get.find<HomepageLogic>().state;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 59,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    "All notes",
                    style: GoogleFonts.actor(
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                  IconButton(
                    color: Colors.grey,
                    onPressed: () {},
                    icon: Icon(Icons.arrow_drop_down_sharp),
                  )
                ],
              ),
              SizedBox(height: 23),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.grey,size: 28,
                      ),
                      hintText: "Search for notes",
                      fillColor: Color(0xFF2E2E2E),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
