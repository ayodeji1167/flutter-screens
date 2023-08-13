// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cofee_shop/components/bottom.dart';
import 'package:cofee_shop/components/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Your current balance is',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '₦200,000',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  outlineBtn('Request'),
                  outlineBtn('Send money'),
                ],
              )
            ]),
          ),
        ],
      ),
      Positioned.fill(top: 380, left: 0, right: 0, child: Bottom())
    ]);
  }

  Container outlineBtn(String name) {
    return Container(
      height: 50,
      width: 165,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFF464E8A), width: 1)),
      child: Text(
        name,
        style: TextStyle(color: Color(0xFF464E8A)),
      ),
    );
  }
}
