import 'package:flutter/material.dart';

import '../constants.dart';
import 'side_bar.dart';
import 'top_bar.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Row(
            children: [
              const SingleChildScrollView(child: SideBar()),
              Expanded(
                child: Column(
                  children: [
                    const TopBar(),
                    Expanded(
                      child: Container(
                        color: const Color(0xffF4F8F9),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(componentPadding),
                            child: child,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
