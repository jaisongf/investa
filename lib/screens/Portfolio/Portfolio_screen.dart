import 'package:flutter/material.dart';

import '../../config/constant.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/heading_six.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final List<Map<String, String>> deliveryStatus = [
    {
      "heading": "CRM",
      "avatar": "assets/saleForce_ic.jpg",
      "subHeading": "192.5",
      "headingSub": "SaleForce Inc",
    },
    {
      "heading": "MMD",
      "avatar": "assets/axaio.png",
      "subHeading": "160.2",
      "headingSub": "Salerce Inc",
    },
    {
      "heading": "HD",
      "avatar": "assets/computools_logo.png",
      "subHeading": "180.25",
      "headingSub": "SaleForce Inc",
    },
    {
      "heading": "DM",
      "avatar": "assets/dataTech_logo.png",
      "subHeading": "241.10",
      "headingSub": "SaleForce Inc",
    }
  ];
  Widget _statusCompleted(String? heading, String? avatar, String? subHeading,
      String? headingSub, double? containerWidth) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: containerWidth,
      decoration: BoxDecoration(
          color: Constant.drakGC,
          borderRadius: BorderRadius.circular(18.0),
          border: Border.all(width: 1, color: Constant.drakGCBor!)),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(avatar!),
              )),
              SizedBox(width: 16),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      HeadingSix(
                          headingSix: heading!,
                          heaingSize: 16,
                          headingColor: Constant.bgWhite,
                          headingWeight: FontWeight.w600),
                      const SizedBox(width: 8.0),
                      HeadingSix(
                          headingSix: headingSub!,
                          heaingSize: 15,
                          headingColor: Constant.headSubTxt,
                          headingWeight: FontWeight.w400),
                    ]),
                    Row(children: [
                      HeadingSix(
                          headingSix: subHeading!,
                          heaingSize: 14,
                          headingColor: Constant.bgWhite,
                          headingWeight: FontWeight.w500),
                      const SizedBox(width: 8.0),
                      HeadingSix(
                          headingSix: '(\$${subHeading!})',
                          heaingSize: 14,
                          headingColor: Constant.headRedColor,
                          headingWeight: FontWeight.w500),
                    ]),
                  ])
            ],
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("data"),
      CommonTextFormField(
          labeltxt: "Search",
          labeltxtColor: Constant.textFormFieldColor,
          labeltxtSize: Constant.textFormFieldSize,
          labeltxtFontWeight: Constant.textFormFieldSizeFontW,
          focuBorColor: Constant.textFormFocuBorCol,
          focuBorWid: Constant.textFormFocuBorWid,
          enaBorColor: Constant.textFormEnaBorCol,
          enaBorWid: Constant.textFormEnaBorWid,
          borderRadiusTL: 8,
          borderRadiusBR: 8,
          contentPadHor: Constant.textFormcontentPadHor,
          contentPadHVer: Constant.textFormcontentPadHVer,
          keyborType: TextInputType.text,
          enabled: true,
          dropdownIcon: false,
          textFormBG: Constant.textFormBG,
          prefixIc: "../../assets/search_ic.svg"
          // controllerTxt: _bdoController,
          ),
      const SizedBox(height: 16.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingSix(
              headingSix: 'Top Traded',
              heaingSize: 15,
              headingColor: Constant.headsColor,
              headingWeight: FontWeight.w600),
          Icon(Icons.arrow_forward, color: Constant.headsColor)
        ],
      ),
      Center(child: Image.asset("assets/banner.png")),
      const SizedBox(height: 16.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingSix(
              headingSix: 'ESR',
              heaingSize: 15,
              headingColor: Constant.headsColor,
              headingWeight: FontWeight.w600),
          Icon(Icons.arrow_forward, color: Constant.headsColor)
        ],
      ),
      const SizedBox(height: 4.0),
      Container(
        height: 95,
        padding: const EdgeInsets.only(),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 8, bottom: 0),
            itemCount: deliveryStatus.length,
            itemBuilder: (context, index) {
              final Map<String, String> data = deliveryStatus[index];
              return _statusCompleted(data['heading'], data['avatar'],
                  data['subHeading'], data['headingSub'], 240);
            }),
      ),
      const SizedBox(height: 16.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingSix(
              headingSix: 'Dividend Yielders',
              heaingSize: 15,
              headingColor: Constant.headsColor,
              headingWeight: FontWeight.w600),
          Icon(Icons.arrow_forward, color: Constant.headsColor)
        ],
      ),
      const SizedBox(height: 4.0),
      Container(
        height: 95,
        padding: const EdgeInsets.only(),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 8, bottom: 0),
            itemCount: deliveryStatus.length,
            itemBuilder: (context, index) {
              final Map<String, String> data = deliveryStatus[index];
              return _statusCompleted(data['heading'], data['avatar'],
                  data['subHeading'], data['headingSub'], 280);
            }),
      ),
    ]);
  }
}
