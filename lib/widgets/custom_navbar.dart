import 'package:flutter/material.dart';

import '../config/constant.dart';
import 'border_bottom.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 1;
  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;

      ///call your PageController.jumpToPage(index) here too, if needed
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(16),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(6.0),
                    bottomLeft: Radius.circular(6.0),
                    bottomRight: Radius.circular(20.0))),
            // title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListBody(
                  children: <Widget>[
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9, bottom: 9),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc1),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Updates",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc2),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "About Us",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc3),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Support",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc4),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Pending Contract",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc5),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Reports",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc6),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Cheque Status Report",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                    const BorderBottom(),
                    InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Row(children: [
                            Container(
                                width: 18,
                                height: 18,
                                child: Constant.moreDialogIc7),
                            const SizedBox(width: 10),
                            const Expanded(
                                child: Text(
                              "Log Out",
                              style: TextStyle(fontSize: 13),
                            ))
                          ]),
                        )),
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return BottomAppBar(
      color: Colors.white,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: InkWell(
                onTap: () {
                  onTabTapped(1);
                  Navigator.pushNamed(context, '/home');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _selectedIndex == 1
                          ? "assets/images/home_selected_ic.png"
                          : "assets/images/home_ic.png",
                      width: 49,
                      height: 43.5,
                      fit: BoxFit.fill,
                    ),
                    Text("Home"),
                  ],
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  onTabTapped(2);
                  Navigator.pushNamed(context, '/sauda');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _selectedIndex == 2
                          ? "assets/images/sauda_selected_ic.png"
                          : "assets/images/sauda_ic.png",
                      width: 49,
                      height: 43.5,
                      fit: BoxFit.fill,
                    ),
                    Text("Sauda"),
                  ],
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  onTabTapped(3);
                  Navigator.pushNamed(context, '/sales');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _selectedIndex == 3
                          ? "assets/images/sales_selected_ic.png"
                          : "assets/images/sales_ic.png",
                      width: 49,
                      height: 43.5,
                      fit: BoxFit.fill,
                    ),
                    Text("Sales"),
                  ],
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  onTabTapped(4);
                  Navigator.pushNamed(context, '/stp');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _selectedIndex == 4
                          ? "assets/images/stp_selected_ic.png"
                          : "assets/images/stp_ic.png",
                      width: 49,
                      height: 43.5,
                      fit: BoxFit.fill,
                    ),
                    Text("STP"),
                  ],
                ),
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  _showMyDialog();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _selectedIndex == 5
                          ? "assets/images/more_selected_ic.png"
                          : "assets/images/more_ic.png",
                      width: 49,
                      height: 43.5,
                      fit: BoxFit.fill,
                    ),
                    Text("More"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
