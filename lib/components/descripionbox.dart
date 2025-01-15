import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, top: 25, left: 25),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.secondary)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('\$55',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary
                    ),
                  ),
                  Text('delivery cost',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                    ),)
                ],
              ),
              Column(
                children: [
                  Text('4 minute',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary
                    ),),
                  Text('delivery time',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary
                    ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
