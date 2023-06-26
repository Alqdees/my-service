import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/Models/colorsProject.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/provider/Provider.dart';

// ignore: must_be_immutable
class CardDonors extends StatelessWidget {
  // const CardViewList({super.key});

  String name, type, title, number;

  CardDonors(
      {super.key,
      required this.name,
      required this.type,
      required this.title,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Consumer<Providers>(builder: (context, value, child) {
      return Container(
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: const Color(0xFF5808FB),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(type,
                      style: const TextStyle(fontSize: 20, color: Colors.red)),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.call,
                size: 30.0,
                color: ColorsProject.colorAppBar,
              ),
              onPressed: () async {
                // _callNumber(number);
                // _makePhoneCall(number);
                value.callNumber(number);
                // _makePhoneCall(number);
              },
            ),
          ],
        ),
      );
    },);
     
  }
}