import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:Al_Zab_township_guide/Models/provider/Provider.dart';
import 'package:Al_Zab_township_guide/generated/l10n.dart';
import 'package:Al_Zab_township_guide/view/widget/Multi_text.dart';
import 'package:Al_Zab_township_guide/view/widget/constant/Constant.dart';

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
    return Card(
      elevation: 8.sp,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Column(
                children: [
                  MultiText(name, S.of(context).name),
                  MultiText(type, S.of(context).type),
                  MultiText(title, S.of(context).title_service),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: IconButton(
              icon: Icon(
                Icons.call,
                size: 4.h,
                color: ColorUsed.primary,
              ),
              onPressed: () async {
                context.read<Providers>().callNumber(number);
              },
            ),
          ),
        ],
      ),
    ).animate().addEffect(
          const MoveEffect(
            begin: Offset(0.0, 10),
            duration: Duration(milliseconds: 500),
            delay: Duration(milliseconds: 200),
            curve: Curves.linear,
          ),
        );
  }
}
