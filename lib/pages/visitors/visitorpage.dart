
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_hub/common_widgets/nav_bar.dart';
import 'package:society_hub/pages/visitors/past_card.dart';
import 'package:society_hub/pages/visitors/reuest_card.dart';
import 'package:society_hub/pages/visitors/visitor_controller.dart';
import 'package:society_hub/pages/visitors/visitor_request_card.dart';
import 'package:society_hub/resources/assets.dart';
import 'package:society_hub/resources/ccolors.dart';
import 'package:society_hub/resources/sizes.dart';
import 'package:society_hub/widgets/text_button.dart';
import 'package:society_hub/widgets/text_view.dart';

class VisitorPage extends StatefulWidget {
  const VisitorPage({super.key});

  @override
  State<VisitorPage> createState() => _VisitorPageState();
}

class _VisitorPageState extends State<VisitorPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<VisitorController>(builder: (_, viewModel, child) => Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(DeviceHeight.s120), child: CustomNavBar(title: 'My Visitors',hintText: 'Search for Visitor',)),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const VisitorRequestCard(),
                SizedBox(height: DeviceHeight.s10),
            
                Container(
                  padding: EdgeInsets.all(DeviceRadius.s8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(DeviceRadius.s100),
                    border: Border.all(color: CColors.black.withValues(alpha: 0.2))
                  ),
                  child: Row(children: viewModel.requests.map((title) => Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: DeviceWidth.s5),
                      child: AppPrimaryButton(
                          onPressed: () => viewModel.didTapRequestButton(title),
                          height: DeviceHeight.s30,
                          text: title,
                          buttonColor: (title == viewModel.selectedRequest) ? CColors.visitorButtonRequestColor: Colors.transparent,
                          textColor: (title == viewModel.selectedRequest) ? CColors.white : CColors.black,
                          fontWeight: FontWeight.w300,
                          textSize: FontSizes.s13,
                        ),
                    ),
                  )).toList()),
                ),
            
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index){
                      if(viewModel.selectedRequest?.toLowerCase() == 'past'.toLowerCase()){
                        return const PastCard();
                      }
                      return RequestCard(header: viewModel.selectedRequest);
                  }),
                )
            
              ],
            ),
          ),
        ),
      ),
    ));
  }
}