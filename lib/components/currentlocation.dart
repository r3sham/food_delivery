
import 'package:flutter/material.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({super.key});
  void OpenLocationSearchBox(BuildContext context) {
    showDialog(context: context,
        builder:(context)=> AlertDialog(
          title: const Text('Insert Location'),
          content:const  TextField(
            decoration: InputDecoration(
              hintText: 'Location'
            ),
          ),
          actions: [
            MaterialButton(onPressed: (){
              Navigator.pop(context);

            },
              child: const Text('Cancel'),
            ),
            MaterialButton(
              onPressed: (){},
              child: const Text('Save'),
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 20, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text('Deliver now'),
          GestureDetector(
            onTap: ()=> OpenLocationSearchBox(context),
            child:const  Row(
              children: [
                Text('Current Address'),
                SizedBox(width: 6,),
                Icon(Icons.arrow_drop_down_circle_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}
