import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../about/about_screen.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icons/theme.svg',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Dark',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.of(context).pushNamed(AboutScreen.path);
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          'assets/icons/about.svg',
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'About',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
