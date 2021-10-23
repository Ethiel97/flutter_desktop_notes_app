import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/widgets/search_bar.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

import '../constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final bool _isNotSm = _size.width >= screenSm;

    return Container(
      height: 145,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: .3,
            color: darkColor.withOpacity(.2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (_isNotSm)
            const SizedBox(
              height: 18,
            ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: _isNotSm
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: _isNotSm ? 24 : 12,
                ),
                child: const Text(
                  'Notes',
                  style: TextStyle(
                    color: darkColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              if (_isNotSm) ...[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _isNotSm ? 24 : 12,
                  ),
                  child: TextButton.icon(
                    icon: const Icon(
                      AntDesign.plus,
                      color: Colors.white,
                      size: 16,
                    ),
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 12,
                      ),
                      backgroundColor: accentColor,
                      enableFeedback: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    label: const Text(
                      ' Create a public note',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: _isNotSm ? 24 : 12,
              ),
              child: const SearchBar(),
            ),
          )
        ],
      ),
    );
  }
}
