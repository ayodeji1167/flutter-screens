// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(25, 34, 89, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            height: 8,
            width: 100,
            decoration: BoxDecoration(
                color: Color.fromRGBO(78, 88, 159, 1),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'All Transactions',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    'Sort by:',
                    style: TextStyle(
                        color: Color.fromRGBO(78, 88, 159, 1), fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Recent',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.expand_more,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        transacItem(
            name: 'Adeboye Usman',
            status: 'Received',
            amount: '200,000',
            imagepath: 'assets/images/img1.png'),
        transacItem(
            name: 'Mercy Popoola',
            status: 'Failed',
            amount: '110,000',
            imagepath: 'assets/images/mercy.png',
            background: Color(0xFF10194E)),
        transacItem(
            name: 'Onome Adetayo',
            status: 'Sent',
            amount: '10,000',
            imagepath: 'assets/images/onome.png'),
        transacItem(
            name: 'Kingsley Abiodun',
            status: 'Received',
            amount: '200,000',
            imagepath: 'assets/images/abiodun.png',
            background: Color(0xFF10194E)),
      ]),
    );
  }
}

Widget transacItem({
  required String name,
  required String status,
  required String amount,
  required String imagepath,
  Color? background,
}) {
Color getColorBasedOnStatus(String status) {
  if (status == 'failed') {
    return  Color.fromRGBO(254, 74, 84, 1);
  } else if (status == 'sent') {
    return  Color.fromRGBO(250, 173, 57, 1);
  } else if (status == 'received') {
    return Color.fromRGBO(29, 199, 172, 1);
  } else {
    return Colors.transparent; // Default color or any other color you prefer
  }
}

  return Container(
    height: 100,
    padding: EdgeInsets.all(10),
    decoration:
        BoxDecoration(color: background ?? Color.fromRGBO(36, 46, 109, 1)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagepath,
              scale: 0.9,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(133, 142, 197, 1),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: getColorBasedOnStatus(status.toLowerCase()),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        status,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        Text(
          '₦$amount',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(29, 199, 172, 1)),
        )
      ],
    ),
  );
}
