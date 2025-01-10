import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/common_widgets/custom_drawer.dart';
import 'package:society_hub/common_widgets/nav_bar.dart';
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
      appBar: PreferredSize(preferredSize: const Size.fromHeight(200), child: NavBar()),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s5),
                  child: Image.asset(Assets.bannerDiwali,width: MediaQuery.of(context).size.width,fit: BoxFit.cover),
                ),
                  SizedBox(height: DeviceHeight.s20),
                Flexible(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(left: 10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.1,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 10), 
                    itemCount: viewModel.dashboardTiles.length,
                    itemBuilder: (_, index){
                      var key = viewModel.dashboardTiles.keys.toList()[index];
                    return DashboardCard(title: key, image: viewModel.dashboardTiles[key]['image'],color: viewModel.dashboardTiles[key]['color'],);
                  }),
                ),
              ],
            ),
          ),
        )
      ),
    ));
  }
}