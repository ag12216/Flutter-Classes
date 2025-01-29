
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/pages/walkthrough/dots.dart';
import 'package:society_hub/pages/walkthrough/walk_card.dart';
import 'package:society_hub/pages/walkthrough/walkthrough_controller.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class WalkThroughView extends StatefulWidget {
  const WalkThroughView({super.key});

  @override
  State<WalkThroughView> createState() => _WalkThroughViewState();
}

class _WalkThroughViewState extends State<WalkThroughView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WalkthroughController>(builder: (_, viewModel, child) => Scaffold(

      body: CarouselSlider.builder(
        itemCount: 3, 
        itemBuilder: (_, index,idx) => WalkCard(viewModel: viewModel), 
        options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: 1,
          initialPage: 0,
          height: MediaQuery.of(context).size.height,
          onPageChanged: (index, reason) => viewModel.onPageChange(context,index),
        )),
    ));
  
  }
}