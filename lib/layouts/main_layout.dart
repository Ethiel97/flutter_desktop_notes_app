import 'package:flutter/material.dart';

import '../constants.dart';
import 'side_bar.dart';
import 'top_bar.dart';

class MainLayout extends StatefulWidget {
  final Widget child;
  const MainLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Row(
            children: [
              SingleChildScrollView(
                child: const SideBar(),
                controller: _scrollController,
              ),
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
                            child: widget.child,
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
