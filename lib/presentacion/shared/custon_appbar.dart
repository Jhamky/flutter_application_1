import 'package:flutter/material.dart';

class CustonAppbar extends StatelessWidget {
  const CustonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: const [
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
