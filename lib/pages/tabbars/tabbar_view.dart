
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/tabbars/tab_page.dart';
import 'package:society_hub/pages/tabbars/tababrs_controller.dart';
import 'package:society_hub/widgets/text_view.dart';

class TabbarsView extends StatefulWidget {
  const TabbarsView({super.key});

  @override
  State<TabbarsView> createState() => _TabbarsViewState();
}

class _TabbarsViewState extends State<TabbarsView> with TickerProviderStateMixin {


  @override
  void initState() {
    TababrsController ctrl = Provider.of<TababrsController>(context,listen: false);
    ctrl.initalizetabBar(this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<TababrsController>(
      builder: (_, viewModel, child) => DefaultTabController(
        
        length: viewModel.tabs.length, child: Scaffold(
          body: SafeArea(
            child: Scaffold(
              appBar: TabBar(
                controller: viewModel.tabController,
                tabs: viewModel.tabs.map((title) => Tab(text: title)).toList()),
              body: TabBarView(
                controller: viewModel.tabController,
                children: viewModel.tabs.map((title) => const TabPage()).toList()),
              
            ),
          ),
        )));
  }
}