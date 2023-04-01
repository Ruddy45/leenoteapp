import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../customWidgets/todoCons.dart';
import 'logic.dart';

class To_doPage extends StatelessWidget {
  To_doPage({Key? key}) : super(key: key);

  final logic = Get.put(To_doLogic());

  final state = Get.find<To_doLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 9,),
              Row(
                children: [
                  SizedBox(width: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('To-dos',style: GoogleFonts.actor(fontSize: 29,fontWeight: FontWeight.w300,color: Colors.white),),
                  ),
                  SizedBox(width: 220,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded,color: Colors.white,))
                ],
              ),
              SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_rounded,
                        color: Colors.grey,size: 28,
                      ),
                      hintText: "Search for to-do",
                      fillColor: Color(0xFF2E2E2E),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(height: 14,),
              todoCons(identifyer: 'Welcome to To-do'),
              SizedBox(height:14),
              todoCons(identifyer: 'Create your to-dos by typing'),
              SizedBox(height:14),
              todoCons(identifyer: 'Tap on to-do content to edit it'),
            ],
          ),
        ),
      ),
    );
  }


}
