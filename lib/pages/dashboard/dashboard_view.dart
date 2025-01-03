import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/dashboard/dashboard_card.dart';
import 'package:society_hub/pages/dashboard/dashboard_controller.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';


class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardController>(builder: (_, viewModel, child) => Scaffold(
      body: SafeArea(
        child: GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10), 
          itemCount: 6,
          itemBuilder: (_, index){
          return DashboardCard(title: viewModel.getValue('my_society'));
        })
      ),
    ));
  }
}