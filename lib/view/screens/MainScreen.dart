import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tester_app/generated/l10n.dart';
import 'package:tester_app/view/screens/BloodScreen.dart';
import 'package:tester_app/view/screens/DoctorScreen.dart';
import 'package:tester_app/view/screens/ProfessionsScreen.dart';
import 'package:tester_app/view/screens/SatotaScreen.dart';
import 'package:tester_app/view/screens/TheCars.dart';
import 'package:tester_app/view/widget/ButtonSelect.dart';

import '../../controller/provider/Provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  // ignore: constant_identifier_names
  static const ROUTE = "MainScreen";
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // final ss = Provider.of<Providers>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 4.0,
        title: Center(
          child: Text(
            S.of(context).title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: const Color(0xFF5808FB),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        transformAlignment: Alignment.center,
        margin: const EdgeInsets.only(
            top: 80.0, bottom: 120.0, left: 16.0, right: 16.0),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select Service'),
            Row(
              children: [
                ButtonSelect(
                  title: S.of(context).blood_type,
                  onPressed: () {
                    context
                        .read<Providers>()
                        .managerScreen(BloodScreen.ROUTE, context);
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                ButtonSelect(
                  title: S.of(context).doctor,
                  onPressed: () {
                    context
                        .read<Providers>()
                        .managerScreen(DoctorScreen.ROUTE, context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Row(
              children: [
                ButtonSelect(
                  title: S.of(context).line,
                  onPressed: () {
                    context
                        .read<Providers>()
                        .managerScreen(TheCars.ROUTE, context);
                  },
                ),
                const SizedBox(
                  width: 5.0,
                ),
                ButtonSelect(
                  title: S.of(context).professions,
                  onPressed: () {
                    context
                        .read<Providers>()
                        .managerScreen(ProfessionsScreen.ROUTE, context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Row(
              children: [
                ButtonSelect(
                  title: S.of(context).internal_transfer,
                  onPressed: () {
                    context
                        .read<Providers>()
                        .managerScreen(SatotaScreen.ROUTE, context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
