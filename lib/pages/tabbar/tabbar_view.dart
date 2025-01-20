
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/common_widgets/nav_bar.dart';
import 'package:society_hub/pages/tabbar/flat_detail.dart';
import 'package:society_hub/pages/tabbar/flat_user.dart';
import 'package:society_hub/pages/tabbar/tab_header.dart';
import 'package:society_hub/pages/tabbar/tabbar_controller.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_view.dart';

class WingPage extends StatefulWidget {
  const WingPage({super.key});

  @override
  State<WingPage> createState() => WingPageState();
}

// MIXIN: TickerProviderStateMixin
// Dart/Flutter: Multiple Inheritance is not supported, "extends" Class1,Class2 --> x
// For that to support Multiple Inheritance "mixin", "with" keyword
class WingPageState extends State<WingPage> with TickerProviderStateMixin {

  @override
  void initState() {
    TabbarController ctrl = Provider.of<TabbarController>(context,listen: false);
    ctrl.initializeTabController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TabbarController>(builder: (_, viewModel, child) => Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(180), child: NavBar()),
      body: SafeArea(
        child: DefaultTabController(length: viewModel.list.length, child: Scaffold(
          appBar: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.transparent,
            controller: viewModel.tabController,
            dividerColor: Colors.transparent,
            tabs: viewModel.list.asMap().map((index, title) => MapEntry(index, TabHeader(
              title: title,
              borderColor: viewModel.tabController?.index == index ? Colors.transparent : Colors.black.withValues(alpha: 0.4),
              bgColor: viewModel.tabController?.index == index ? Colors.orange : Colors.white, 
              textColor: viewModel.tabController?.index == index ? Colors.white : Colors.black))).values.toList()
          ),
          body: Padding(
            padding: EdgeInsets.only(top: DeviceHeight.s10),
            child: TabBarView(
              controller: viewModel.tabController,
              children: viewModel.list.map((e) => ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (_, index){
                return FlatDetail(title: e);
              })).toList()),
          ),
        
        )),
      ),
    ));
  }
}