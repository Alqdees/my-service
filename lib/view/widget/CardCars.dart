import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Models/provider/Provider.dart';
import '../../generated/l10n.dart';
import 'Multi_text.dart';
import 'constant/Constant.dart';

// ignore: must_be_immutable
class CardCars extends StatelessWidget {
  late String name, type, time, number, from;

  CardCars({
    required this.name,
    required this.type,
    required this.time,
    required this.number,
    required this.from,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.teal,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                MultiText(name, S.of(context).name),
                MultiText(type, S.of(context).type),
                MultiText(time, S.of(context).time),
                MultiText(from, S.of(context).from),
              ],
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
      ).animate().addEffect(
            const MoveEffect(
          begin: Offset(0.0, 10),
              duration: Duration(milliseconds: 500),
              delay: Duration(milliseconds: 200),
              curve: Curves.linear,
            ),
          ),
    );
  }
}
