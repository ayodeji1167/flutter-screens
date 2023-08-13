// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.06)),
                child: Image.asset('assets/images/headi.png'),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Hello Sandra,',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.06),
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              'Add money',
              style: TextStyle(color: Color(0xFF426DDC)),
            ),
          )
        ],
      ),
    );
  }
}
