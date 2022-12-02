
import 'package:flutter/material.dart';

class StepAndDescription extends StatelessWidget {
   final String step;
    final String description; 

  const StepAndDescription({
   
    Key? key, required this.step, required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
        Text(step, style: TextStyle(
         fontSize:24,
         fontWeight: FontWeight.w700, 
       ),),
       SizedBox(height: 10,),
       Text(description,style: TextStyle(
         fontSize:12,
         fontWeight: FontWeight.w300, 
       ),)
     ],
    );
  }
}