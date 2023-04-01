import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container Nocategorybubble() {
  return Container(
    width: 140,
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Color(0xFF1A1A1A),
    ),
    child: Row(
      children: [
        SizedBox(width: 10,),
        Icon(Icons.folder_outlined,color: Colors.white,size:19,),
        SizedBox(width: 4,),
        Text('No category' ,style: GoogleFonts.roboto(fontSize: 15,color: Colors.white60,fontWeight: FontWeight.w400),),
        SizedBox(width: 8,),
        Icon(Icons.arrow_drop_down_sharp,color: Colors.grey,)
      ],
    ),
  );
}