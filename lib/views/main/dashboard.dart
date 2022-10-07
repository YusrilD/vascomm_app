import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/model/type_model.dart';
import 'package:vascomm_app/source/constant.dart';
import 'package:vascomm_app/source/image_assets.dart';
import 'package:vascomm_app/utils/reuse.dart';
import 'package:vascomm_app/views/main/cards/bottom_cards.dart';
import 'package:vascomm_app/views/main/cards/middle_cards.dart';
import 'package:vascomm_app/views/main/cards/upper_cards.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  final Reuse use = Reuse();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              ImageAssets.cart,
            ),
            use.spaceW(33),
            Image.asset(
              ImageAssets.notif,
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF002060),
        ),
      ),
      drawer: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: Get.height,
              width: 55,
              color: Color(0xFF002060).withOpacity(0.6),
              alignment: Alignment.topCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              // width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.grey,
              child: Drawer(
                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text('Drawer Header'),
                    ),
                    ListTile(
                      title: const Text('Item 1'),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                    ListTile(
                      title: const Text('Item 2'),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UpperCard(),
            MiddleCard(),
            use.spaceH(30),
            BottomCard(),
            _filterAndSearch(),
            _productSlider(),
            _productList(),
            use.spaceH(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Pilih Tipe Layanan Kesehatan Anda",
                style: TextStyle(
                  fontFamily: "GilroySemiBold",
                  color: Color(0xFF002060),
                  fontSize: 16,
                ),
              ),
            ),
            use.spaceH(22),
            _typeSelector(),
            use.spaceH(40),
            _typeList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.loading),
                Text(
                  "Tampilkan Lebih Banyak",
                  style: TextStyle(
                    fontFamily: "ProximanovaRegular",
                    color: Color(0xFFBEBEBE),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  ImageAssets.endDashboard,
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      height: 107,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Ingin mendapat update dari kami ?",
                              style: TextStyle(
                                fontFamily: "ProximanovaRegular",
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          use.spaceW(40),
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Dapatkan notifikasi",
                                    style: TextStyle(
                                      fontFamily: "ProximanovaLight",
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            use.spaceH(30),
          ],
        ),
      ),
    );
  }

  Widget _typeList() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listType.length,
        itemBuilder: (_, i) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8.0,
                  spreadRadius: -4.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listType[i].title!,
                              style: TextStyle(
                                fontFamily: "ProximanovaRegular",
                                color: Color(0xFF002060),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              listType[i].range!,
                              style: TextStyle(
                                fontFamily: "ProximanovaRegular",
                                color: Color(0xFF002060),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          listType[i].price!,
                          style: TextStyle(
                            fontFamily: "ProximanovaSemiBold",
                            color: Color(0xFFFF7200),
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(ImageAssets.buildingIcon),
                            use.spaceW(7.5),
                            Text(
                              listType[i].location!,
                              style: TextStyle(
                                fontFamily: "ProximanovaRegular",
                                color: Color(0xFF6A6A6A),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(ImageAssets.pinIcon),
                            use.spaceW(7.5),
                            Text(
                              listType[i].addrress!,
                              style: TextStyle(
                                fontFamily: "ProximanovaLight",
                                color: Color(0xFFBEBEBE),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    listType[i].image!,
                    height: 150,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _typeSelector() {
    return Container(
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 8.0,
            spreadRadius: -4.0,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      height: 28,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF00D9D5),
              ),
              child: const Text(
                "Satuan",
                style: TextStyle(
                  fontFamily: "ProximanovaRegular",
                  color: Color(0xFF002060),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              alignment: Alignment.center,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(20),
              //   color: Color(0xFF00D9D5),
              // ),
              child: const Text(
                "Paket Pemeriksaan",
                style: TextStyle(
                  fontFamily: "ProximanovaLight",
                  color: Color(0xFF002060),
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _productList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(2, (index) {
          return Container(
            width: Get.width * 0.42,
            height: 176,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8.0,
                  spreadRadius: -4.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xFFFFEA00),
                      ),
                      use.spaceW(3),
                      const Text(
                        "5",
                        style: TextStyle(
                          fontFamily: "ProximanovaSemiBold",
                          color: Color(0xFFBEBEBE),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(ImageAssets.microscope),
                  const Text(
                    "Suntik Steril",
                    style: TextStyle(
                      fontFamily: "ProximanovaSemiBold",
                      color: Color(0xFF002060),
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Rp. 10.000",
                        style: TextStyle(
                          fontFamily: "ProximanovaSemiBold",
                          color: Color(0xFFFF7200),
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFFB3FFCB),
                        ),
                        padding: EdgeInsets.all(3),
                        child: const Text(
                          "Ready Stock",
                          style: TextStyle(
                            fontFamily: "ProximanovaLight",
                            color: Color(0xFF007025),
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _productSlider() {
    return Container(
      height: 60,
      padding: const EdgeInsets.only(
        left: 20,
        top: 7.5,
        bottom: 7.5,
      ),
      // color: Colors.pink,
      alignment: Alignment.topCenter,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listProduct.length,
        itemBuilder: (context, i) {
          return Container(
            height: 30,
            margin: const EdgeInsets.only(right: 20, bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: i == 0 ? const Color(0xFF002060) : Colors.white,
              boxShadow: [
                BoxShadow(
                  color: i == 0
                      ? const Color(0xFF002060).withOpacity(0.35)
                      : Colors.grey.withOpacity(0.2),
                  blurRadius: 8.0,
                  spreadRadius: -4.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              listProduct[i],
              style: TextStyle(
                fontFamily: "ProximanovaSemiBold",
                color: i == 0 ? Colors.white : const Color(0xFF002060),
                fontSize: 12,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _filterAndSearch() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8.0,
                  spreadRadius: 2.0,
                  offset: const Offset(-2, 4),
                ),
              ],
            ),
            child: Image.asset(ImageAssets.filterIcon),
          ),
          Expanded(
            child: inputLogin(hintText: "Search"),
          ),
        ],
      ),
    );
  }

  Container inputLogin({
    String hintText = "",
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 8.0,
            spreadRadius: -5.0,
            offset: const Offset(-5, 20),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: "ProximanovaRegular",
            fontSize: 12,
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Image.asset(
              ImageAssets.searchIcon,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
