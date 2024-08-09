import 'package:fixit/features/home/presentation/widgets/custom_sliver_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: false,
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
            expandedHeight: 120,
            toolbarHeight: 150,
            flexibleSpace: CustomSliverAppBar(),
          ),
        ],
      ),
    );
  }
}
