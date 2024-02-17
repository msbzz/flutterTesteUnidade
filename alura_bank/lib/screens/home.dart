import 'package:alura_bank/components/sections/actions.dart';
import 'package:alura_bank/components/sections/header.dart';
import 'package:alura_bank/components/sections/points_exchange.dart';
import 'package:alura_bank/components/sections/recent_activities.dart';
import 'package:alura_bank/data/bank_http.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({required this.api,Key? key}) : super(key: key);
  final Future<String> api;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(api:api,), // cuidado com o const
            const RecentActivity(),
            const ActionsSection(),
            const PointsExchange(),
          ],
        ),
      ),
    );
  }
}
