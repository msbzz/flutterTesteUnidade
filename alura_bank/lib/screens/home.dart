import 'package:alura_bank/components/sections/actions.dart';
import 'package:alura_bank/components/sections/header.dart';
import 'package:alura_bank/components/sections/points_exchange.dart';
import 'package:alura_bank/components/sections/recent_activities.dart';
import 'package:alura_bank/data/bank_http.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(), // cuidado com o const
            RecentActivity(),
            ActionsSection(),
            PointsExchange(),
          ],
        ),
      ),
    );
  }
}
