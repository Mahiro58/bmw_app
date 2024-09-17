import 'package:flutter/material.dart';

class ServisHistory extends StatelessWidget {
  const ServisHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xff1c1c1c),
        leading: IconButton(
          onPressed: (){    
            Navigator.pop(context);
          }, 
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )
        ),
      ),
      backgroundColor: const Color(0xff1c1c1c),
      body: const Center(
        child: Text(
          "Prace w toku...",
          style: TextStyle(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}