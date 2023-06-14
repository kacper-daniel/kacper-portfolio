import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      color: Colors.grey.shade500,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(Icons.copyright, color: Colors.white, size: 10,),
          Text(" 2023  •  Kacper Daniel", style: TextStyle(color: Colors.white, fontSize: 10),)
        ],
      ),
    );
  }
}