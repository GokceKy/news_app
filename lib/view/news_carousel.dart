import 'package:flutter/material.dart';

class NewsCarousel extends StatelessWidget {
  const NewsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    // Örnek haber verileri
    final List<Map<String, String>> newsData = [
      {
        'image': 'https://via.placeholder.com/300',
        'category': 'Technology',
        'description': 'The latest advancements in AI technology.',
      },
      {
        'image': 'https://via.placeholder.com/300',
        'category': 'Sports',
        'description': 'Exciting moments from the world cup final.',
      },
      {
        'image': 'https://via.placeholder.com/300',
        'category': 'Politics',
        'description': 'Breaking news from the parliament.',
      },
    ];

    return SizedBox(
      height: 270,
      child: PageView.builder(
        itemCount: newsData.length,
        itemBuilder: (context, index) {
          final newsItem = newsData[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12.0),
                    ),
                    child: Image.network(
                      newsItem['image']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      newsItem['category']!,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      newsItem['description']!,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
