import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/common/deepauto_chat_websites_common.dart';
import '../../common/model/deepauto_chat_home_model.dart';
import '../../common/model/deepauto_chat_home_privacy_model.dart';
import '../../common/deepauto_chat_url_unit.dart';

class DeepautoChatHomeMobilePageBottom extends StatelessWidget {
  const DeepautoChatHomeMobilePageBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
        color: Colors.white,
        height: 300,
        child: const DeepautoChatHomeMobilePageBottomPrivacyRelated());
  }
}

class DeepautoChatHomeMobilePageBottomDetail extends StatelessWidget {
  const DeepautoChatHomeMobilePageBottomDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var itemWidth = (width * 0.9 - 10) * 0.5;
    var itemHeight = 110.0;
    var childAspectRatio = itemWidth / itemHeight;
    return SizedBox(
      width: width * 0.9,
      child: GridView.builder(
          itemCount: DeepautoChatHomeModel.getLists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: childAspectRatio),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              borderRadius: BorderRadius.circular((8.0)),
              child: SizedBox(
                width: width - 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      DeepautoChatHomeModel.getLists[index].title,
                      style: GoogleFonts.sourceSerifPro(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xB5000000),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      DeepautoChatHomeModel.getLists[index].message,
                      style: GoogleFonts.sourceSerifPro(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11,
                          color: Color(0xB5000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class DeepautoChatHomeMobilePageBottomPrivacyRelated extends StatelessWidget {
  const DeepautoChatHomeMobilePageBottomPrivacyRelated({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 240,
        child: Column(
          children: [
            InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {
                  DeepautoChatURLUnit.openProducthunt();
                },
                child: Container(
                  height: 62,
                  width: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular((10.0)),
                  ),
                  child: SvgPicture.asset("images/svg/producthunt.svg"),
                )),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  DeepautoChatHomePrivacyModel.getItems.length, (index) {
                return Row(children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5.0),
                    onTap: DeepautoChatHomePrivacyModel.getItems[index].onTap,
                    child: Container(
                        height: 30,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 5, top: 5),
                        decoration: BoxDecoration(
                          color: const Color(0x3ff1f1f1),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular((5.0)),
                        ),
                        child: Center(
                          child: Text(
                            DeepautoChatHomePrivacyModel.getItems[index].title,
                            style: GoogleFonts.sourceSerifPro(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 9,
                                color: Color(0xB2000000),
                              ),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(width: 8)
                ]);
              }),
            ),
            const SizedBox(height: 15),
            Center(
              child: Text(
                  "DeepAuto Chat an AI chat application based on GPT-4!\n\n Copyright © Beijing Xiadat Technology Co.,Ltd. All Rights",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: const Color(0xB2000000),
                    fontFamily: TextStyleConstant.fontFamily,
                  )),
            ),
            const SizedBox(height: 20)
          ],
        ));
  }
}
