import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SunnyAppBar extends StatelessWidget {
  final ZoomDrawerController zoomDrawerController;

  const SunnyAppBar({required this.zoomDrawerController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            alignment: Alignment.centerLeft,
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
              height: 24,
              width: 24,
            ),
            tooltip: 'Toggle Appbar menu',
            onPressed: () {
              zoomDrawerController.toggle?.call();
            },
          ),
          const SizedBox(width: 40),
          const Text('Sunny',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
