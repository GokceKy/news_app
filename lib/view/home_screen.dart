import 'package:flutter/material.dart';
import 'package:news_app/view/custom_searchbar.dart';
import 'package:news_app/view/news_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomSearchBar(),
              ),
              const SizedBox(height: 10),
              const NewsCarousel(),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
