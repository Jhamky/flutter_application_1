import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.place_outlined,
                  color: Colors.blue,
                ),
              ],
            ),
          )),
    );
  }
}
