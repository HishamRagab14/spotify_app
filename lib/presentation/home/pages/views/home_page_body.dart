import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/core/utils/assets.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          homeTopCard(),
          homeTaps(),
        ],
      ),
    );
  }

  Widget homeTopCard() {
    return Center(
      child: SizedBox(
        height: 160,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                Assets.imagesHomeArtist,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Image.asset(
                  Assets.imagesBilliehomepng,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget homeTaps() {
    return TabBar(
      controller: _tabController,
      tabAlignment: TabAlignment.start,
      isScrollable: true,
      labelColor: context.isDarkMode ? Colors.white : Colors.black,
      indicatorColor: AppColors.primaryColor,
      dividerColor: Colors.transparent,
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 14,
      ),
      tabs: [
        Text('News',style: TextStyle(fontSize: 18),),
        Text('Videos',style: TextStyle(fontSize: 18),),
        Text('Artists',style: TextStyle(fontSize: 18),),
        Text('Podcasts',style: TextStyle(fontSize: 18),),
      ],
    );
  }
}
