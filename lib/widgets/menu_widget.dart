import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/theme.svg',
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Dark',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    'assets/icons/about.svg',
                    alignment: Alignment.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 20,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About',
                    style: TextStyle(
                      height: 1.3,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
