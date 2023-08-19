import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constant {
  static String? homeTitle1 = "Pending Sauda";
  static String? homeTitle2 = "Today";
  static String? homeTitle3 = "Due's";
  static Color? fontColorGlobal = const Color(0xff183264);
  static Color? fontColorBlack = const Color(0xff000000);
  static Color? bgWhite = const Color.fromRGBO(255, 255, 255, 1);
  static Color? bgDark = const Color(0xfff1C1C2A);
  static final TextTheme textTheme = GoogleFonts.interTextTheme();
  static const TextStyle interTextStyle = TextStyle(fontFamily: 'Inter');
  static Color? globalBg = const Color(0xFFEEFCFF);
  static Color? statusBgBlue = const Color(0xFF12A5BC);
  static Color? statusBgBlueLine = const Color(0xFFBBF0F8);
  static Color? statusBgVol = const Color(0xFF715990);
  static Color? statusBgVolLine = const Color(0xFFF4EBFF);
  static Color? globalFontCol = const Color(0xFF28292C);
  static Color? subTxtCol = const Color(0xFF5C5C68);

  static Color? drakGC = const Color(0xFF262739);
  static Color? drakGCBor = const Color(0xFF2B2D3C);
  static Color? headSubTxt = const Color(0xFF5C5F72);
  static Color? headRedColor = const Color(0xFFA04E66);
  static Color? headsColor = const Color(0xFFA2A5AE);

  static Color? globalFontColDull = const Color(0xFF939495);
  static Color? dashBoardLabelBg = const Color(0xFF003145);
  static Color? customBrowcol = const Color(0xFFF5ECE5);
  static Color? customBrowFoncol = const Color(0xFF9F4200);
  static Color? customcoun = const Color(0xFF95B0B6);
  static Color? customcoun1 = const Color(0xFFEEE8A9);

  static Image? bgImgGlobal =
      Image.asset("assets/images/all_bg.png", fit: BoxFit.contain);

  static String? customerLedgerImage = "assets/images/ledger_bg.png";

  static Color? homeBoxPendingRed = const Color(0xffE71928);
  static Color? homeBoxPendingOrange = const Color(0xffF68C33);
  static Color? homeBoxTodayColor1 = const Color(0xff00A7D4);
  static Color? homeBoxTodayColor2 = const Color(0xffF5BD3A);
  static Color? homeBoxDueColor1 = const Color(0xffE71928);
  static Color? homeBoxDueColor2 = const Color(0xffE71928);
  static Color? colorGreencc = const Color(0xFF00974C);

  static Image? homePendingImg1 =
      Image.asset("assets/images/expired_ic.png", width: 28, height: 30);
  static Image? homePendingImg2 =
      Image.asset("assets/images/Near_Expired_ic.png", width: 28, height: 30);

  static Image? homeTodayImg1 =
      Image.asset("assets/images/rupee_ic.png", width: 24, height: 26);
  static Image? homeTodayImg2 =
      Image.asset("assets/images/notes_ic.png", width: 24, height: 26);

  static Image? homeDueImg1 =
      Image.asset("assets/images/expired_ic.png", width: 24, height: 26);
  static Image? homeDueImg2 =
      Image.asset("assets/images/expired_ic.png", width: 24, height: 26);

  static Image? homeUserIc =
      Image.asset("assets/images/user_ic.png", width: 36, height: 36);

  static Image? homeBellIc = Image.asset(
    "assets/images/bell_ic.png",
    width: 12,
    height: 14,
    fit: BoxFit.none,
  );

  static Image? rightArow = Image.asset("assets/images/right_arrow_ic.png",
      width: 25.17, height: 16.77);

// Sauda ********************
  static Color? saudacolor1 = const Color(0xff92C149);
  static Color? saudacolor2 = const Color(0xff00974C);
  static Color? saudacolor3 = const Color(0xff0076AD);
  static Color? saudacolor4 = const Color(0xff00A7D4);
  static Color? saudacolor5 = const Color(0xff292F76);
  static Color? saudacolor6 = const Color(0xffF5BD3A);
  static Color? saudacolor7 = const Color(0xff9E275C);
  static IconData? saudaIcPlus = Icons.add;
  static double? saudaBoxHeight = 60;
  static double? saudaImgWidth = 32;
  static double? saudaImgHeight = 32;
  static Image? sauduImage1 = Image.asset("assets/images/sauda_conv_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage2 = Image.asset(
      "assets/images/sauda_extension_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage3 = Image.asset(
      "assets/images/booked_sauda_status_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage4 = Image.asset(
      "assets/images/price_discovery_ic.png",
      width: saudaImgWidth,
      height: saudaImgHeight);
  static Image? sauduImage5 = Image.asset("assets/images/limit_enhance_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage6 = Image.asset("assets/images/sales_order_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);
  static Image? sauduImage7 = Image.asset("assets/images/sauda_approval_ic.png",
      width: saudaImgWidth, height: saudaImgHeight);

  // Sales ******************
  static Color? salescolor1 = const Color(0xff00974C);
  static Color? salescolor2 = const Color(0xff00A7D4);
  static Color? salescolor3 = const Color(0xffF5BD3A);
  static Color? salescolor4 = const Color(0xff00A7D4);
  static String? salesTitle1 = "YTD Sales Analysis";
  static String? salesTitle2 = "Credit Limit Overview";
  static double? salesImgWidth = 20;
  static double? salesImgHeight = 20;
  static Image? salesImage1 = Image.asset("assets/images/bp_ic.png",
      width: salesImgWidth, height: salesImgHeight);
  static Image? salesImage2 = Image.asset("assets/images/cp_ic.png",
      width: salesImgWidth, height: salesImgHeight);
  static Image? salesImage3 = Image.asset("assets/images/preformance_ic.png",
      width: salesImgWidth, height: salesImgHeight);
  static Image? salesImage4 = Image.asset("assets/images/rupee_ic.png",
      width: salesImgWidth, height: salesImgHeight);

  static Image? salesImageGraph = Image.asset("assets/images/sales_graph2.png");
  // login *****************
  static Image? loginImgBg = Image.asset("assets/images/login_bg.png");
  static Image? loginLogoImg = Image.asset(
    "assets/images/fortune_logo.png",
    width: 207,
    height: 135,
  );
  static Image? loginGroupLogo = Image.asset(
    "assets/images/adani_logo.png",
    width: 99,
    height: 64,
  );
  static Image? loginUserIc = Image.asset(
    "assets/images/login_user_ic.png",
    width: 24,
    height: 24,
  );
  static Image? loginLockIc = Image.asset(
    "assets/images/login_lock_ic.png",
    width: 24,
    height: 24,
  );

  //Call to Customer
  static Color? callToCcolor1 = const Color(0xFFF68C33);
  static IconData? callToCsbIcon1 = Icons.check_box;
  static Color? callToCsbCol1 = const Color(0xFF00974C);

// Saudu conversion
  static IconData? sCIcon1 = Icons.location_city_rounded;

// Saudu Extention
  static Color? saExColorRed = const Color(0xFFE71928);

// Booked sauda status
  static Color? booSauStacolor = const Color(0xFF00974C);
  static Image? booSauStaTickIc =
      Image.asset("assets/images/tick_1_ic.png", width: 13, height: 13);
  static Image? booSauStaCLoseIc =
      Image.asset("assets/images/close_1_ic.png", width: 13, height: 13);

//Saudu priceDiscovery
  static Color? pricDisBocolor = const Color(0x20A1A1A1);
  static Color? pricFIledCOl = const Color(0xFFFFFFFF);
  static Color? pricTxtCOl = const Color(0xFF000000);
  static double? pricTxtCOlSize = 12.0;
  static String? pricDisTitle1 = "Oil Type";
  static String? pricDisTitle2 = "Emami Quantity";
  static String? pricDisTitle3 = "Emami Price";
  static String? pricDisTitle4 = "Workable Price (Rs/case)";
  static String? pricDisTitle5 = "Competitor Name";
  static String? pricDisTitle6 = "Workable Price (Rs/case)";

  static String? pricButtonName = "Confirm Request";
  static double? pricbuttonNameSize = 14;
  static Color? pricbuttonTxtColor = Colors.white;
  static Color? pricbuttonColor = Color(0xFFE71928);
  static double? pricbuttonHeight = 40;
  static double? pricbuttonRadiusTL = 15;
  static double? pricbutRadiusBL = 4;
  static Color? pricbuttonBorColorTre = Color(0xFFE71928);

  static String? pricSkuName = "SKU Name";
  // COmmon Text form fiels
  static Color? textFormFieldColor = Color(0xFF787A87);
  static double? textFormFieldSize = 13;
  static FontWeight? textFormFieldSizeFontW = FontWeight.normal;
  static Color? textFormFocuBorCol = Color(0xFF2D2F3E);
  static double? textFormFocuBorWid = 1;
  static Color? textFormEnaBorCol = Color(0xFF2D2F3E);
  static Color? textFormBG = Color(0xFF26273950);
  static double? textFormEnaBorWid = 1;
  static double? textFormborderRadiusTL = 15;
  static double? textFormborderRadiusBR = 4;
  static double? textFormcontentPadHor = 16;
  static double? textFormcontentPadHVer = 2;

  //Sauda Limit Enhancement
  static String? saudaLETxt1 = "Distributor Name";
  static String? saudaLETxt2 = "Required Additional Sauda Limit (MT)";
  static String? saudaLETxt3 = "Remarks";
  static String? saudaLEButtonTxt1 = "Cancel";
  static String? saudaLEButtonTxt2 = "Raise Request";
  static int? saudaLETxt3MaxLine = 3;
  static Color? saudaLETbuttonBorder = const Color(0xFF757575);
  static Color? saudaLETbuttonColor = Colors.white;
  static Color? saudaLETTxtColor = const Color(0xFF757575);
  static String? saudaLETBox1Txt1 = "Available Sauda Limit";
  static String? saudaLETBox1SubTxt1 = "9539.11 MT";
  static Color? saudaLETBoxColor1 = const Color(0xFF00974C);
  static String? saudaLETBox2Txt2 = "Total Sauda Booked";
  static String? saudaLETBox2SubTxt2 = "10000 MT";
  static Color? saudaLETBoxColor2 = const Color(0xFF00A7D4);

  // More Dialog Box
  static Image? moreDialogIc1 =
      Image.asset("assets/images/update_ic.png", width: 18, height: 15);
  static Image? moreDialogIc2 =
      Image.asset("assets/images/abt_ic.png", width: 20, height: 20);
  static Image? moreDialogIc3 =
      Image.asset("assets/images/support_ic.png", width: 15, height: 17);
  static Image? moreDialogIc4 =
      Image.asset("assets/images/pending_ic.png", width: 18, height: 34);
  static Image? moreDialogIc5 =
      Image.asset("assets/images/report_ic.png", width: 20, height: 18);
  static Image? moreDialogIc6 =
      Image.asset("assets/images/cheque_ic.png", width: 20, height: 22);
  static Image? moreDialogIc7 =
      Image.asset("assets/images/logout_ic.png", width: 17, height: 14);
  // font size ***************
  static double? headingSix = 14.0;
  static double? fontSize0 = 0.0;
  static double? fontSize10 = 10.0;
  static double? fontSize11 = 11.0;
  static double? fontSize12 = 12.0;
  static double? fontSize13 = 13.0;
  static double? fontSize14 = 14.0;
  static double? fontSize15 = 15.0;
  static double? fontSize16 = 16.0;
  static double? fontSize18 = 18.0;
  static double? fontSize20 = 20.0;
  static double? fontSize22 = 22.0;

  // font weight *************
  static FontWeight? fontWeight500 = FontWeight.w500;
  static FontWeight? fontWeight600 = FontWeight.w600;

  // color ********************
  static Color? colorBlack = Color(0xFF000000);
  static Color? colorLightGray = const Color(0xFFA1A1A1);
  static Color? colorWhite = const Color(0xFFffffff);
  static Color? colorRed = const Color(0xFFE71928);
  static Color? colorGray75 = const Color(0xFF757575);
  static Color? colorGray45 = const Color(0x45000000);
  static Color? colorOrange = const Color(0xFFF68C34);
  static Color? saudaAppDullColor = const Color(0xFF757575);
  static Color? colorDullYellow = const Color(0xFFFEF8EB);
  static Color? colorDullOrange = const Color(0xFFFFFBF7);

  // commom *******************
  static double? containerWrapper = 8;
  static double? containerTopWrapper = 84;
}
