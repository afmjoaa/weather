import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SunnyAppBar extends StatelessWidget {
  final VoidCallback onTabCallback;
  final String assetLocation;
  final String title;
  final String? tooltip;

  const SunnyAppBar({
    required this.assetLocation,
    required this.title,
    required this.onTabCallback,
    this.tooltip,
    Key? key, }) : super(key: key);

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
              assetLocation,
              fit: BoxFit.contain,
              alignment: Alignment.centerLeft,
              height: 24,
              width: 24,
            ),
            tooltip: tooltip ?? 'Toggle Appbar menu',
            onPressed: () {
              onTabCallback.call();
            },
          ),
          const SizedBox(width: 40),
          Text( title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
