import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../config/constant.dart';
import '../../widgets/common-textfield.dart';
import '../../widgets/heading_six.dart';
import '../../realm/schemas.dart';

class PortfolioScreen extends StatefulWidget {
  PortfolioScreen({Key? key}) : super(key: key);

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

    List<dynamic> stockDataList = [];

    final app = App(AppConfiguration('devicesync-lsodp'));

    Future<void> fetchData() async {

      /**
        final appConfig = AppConfiguration("devicesync-lsodp");
        final app = App(appConfig);
          
        // Device Sync offers built-in Auth to secure Syncing data
        final user = await app.logIn(Credentials.anonymous());

        final config = Configuration.flexibleSync(user, [Stock.schema]);
        final realm = Realm(config);
        
        // Realm Writes are transactional and Sync automatically
        realm.write(() {
            realm.add(Stock(ObjectId(), "1",  "1",  "1",  "1",  "1",  "1", ));
        });

        // Data Synced onto a device can be queried locally
        final allStocks = realm.all<Stock>().query("age > 5");
       */



      final response = await http.get(Uri.parse('https://eu-west-2.aws.data.mongodb-api.com/app/data-efxfb/endpoint/investa_mongodb_get_stocks?apiKey=2b1b02b0a6b64bc9b817cfd414148795'));
     
      if (response.statusCode == 200) {
        setState(() {

          List<Map<String, dynamic>> jsonStockDataList = List<Map<String, dynamic>>.from(json.decode(response.body));

          List<Map<String, String>> convertedStockDataList = jsonStockDataList.map((map) {
            return map.map((key, value) => MapEntry(key, value.toString()));
          }).toList();

          print('Data fetching data: ${convertedStockDataList}'); 
          stockDataList = convertedStockDataList;
        });
      } else {
        // Handle error
        print('Error fetching data: ${response.statusCode}');
      }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }


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
                backgroundImage: NetworkImage(avatar!),
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
            itemCount: stockDataList.length,
            itemBuilder: (context, index) {
              final Map<String, String> data = stockDataList[index];
              String imageUrl = 'http://do1r04b5laugk.cloudfront.net/${data['stockSymbol']}.png';
              return _statusCompleted(data['stockSymbol'], imageUrl,
                  data['sharePrice'], data['companyName'], 240);
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
            itemCount: stockDataList.length,
            itemBuilder: (context, index) {
              final Map<String, String> data = stockDataList[index];
              String imageUrl = 'http://do1r04b5laugk.cloudfront.net/${data['stockSymbol']}.png';
              return _statusCompleted(data['stockSymbol'], imageUrl,
                  data['sharePrice'], data['companyName'], 280);
            }),
      ),
    ]);
  }
}
