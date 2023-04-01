import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container todoCons({required String identifyer}) {
  return Container(
    height: 68,
    width: 322,
    decoration: BoxDecoration(color: Color(0xFF2E2E2E),borderRadius: BorderRadius.circular(13)),
    child: Row(
      children: [
        const SizedBox(width: 10,),
        const Icon(Icons.circle_outlined,color: Colors.grey,size: 20,),
        const SizedBox(width: 10,),
        Text(identifyer,style: GoogleFonts.actor(color: Colors.white,fontSize: 17),)
      ],
    ),
  );
}