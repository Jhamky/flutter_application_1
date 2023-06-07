import 'package:flutter/material.dart';

class CustonAppbar extends StatelessWidget {
  const CustonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
          )),
    );
  }
}
