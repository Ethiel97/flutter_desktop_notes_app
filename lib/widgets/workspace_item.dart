import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/constants.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class WorkspaceItem extends StatelessWidget {
  final bool isDesktop;

  const WorkspaceItem({Key? key, required this.isDesktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            color: darkColor.withOpacity(.04),
            blurRadius: 8,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: isDesktop
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            child: const Icon(
              FlutterIcons.mountain_faw5s,
              color: Colors.white,
              size: 18,
            ),
            decoration: BoxDecoration(
              color: const Color(0xff008BFF),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          if (isDesktop) ...[
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Paynam',
                  style: TextStyle(
                    color: darkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Workspace',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const Spacer(),
            const Icon(
              AntDesign.arrowsalt,
              color: textColor,
              size: 14,
            ),
          ]
        ],
      ),
    );
  }
}
