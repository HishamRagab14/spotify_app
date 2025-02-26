import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/core/utils/assets.dart';
import 'package:spotify_app/presentation/home/pages/views/all_songs_playlist_title.dart';
import 'package:spotify_app/presentation/home/pages/views/all_songs_playlist_view.dart';
import 'package:spotify_app/presentation/home/pages/views/new_songs_view.dart';

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: homeTopCard(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: homeTaps(),
          ),
          Container(
            height: 240,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TabBarView(
              controller: _tabController,
              children: [
                NewSongsView(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AllSongsPlaylistTitle(),
          ),
          AllSongsPlaylist(),
        ],
      ),
    );
  }

  Widget homeTopCard() {
    return Center(
      child: SizedBox(
        height: 150,
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
                padding: const EdgeInsets.only(right: 30),
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
        vertical: 25,
      ),
      tabs: [
        Text(
          'News',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Videos',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Artists',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'Podcasts',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}


