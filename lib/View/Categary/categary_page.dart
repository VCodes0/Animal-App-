import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  List listOfImages = [
    "assets/C1.png",
    "assets/C2.png",
    "assets/C3.png",
    "assets/C4.png",
    "assets/C5.png",
    "assets/C6.png",
    "assets/C7.png",
    "assets/C8.png",
    "assets/C9.png",
    "assets/C10.png",
    "assets/C11.png",
  ];

  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size; // Get screen size

    return Scaffold(
      appBar: AppBar(title: const Text('Image Categories'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              // Changed from ListView.builder to GridView.builder
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Displays 1 item per row
                mainAxisSpacing: 8.0, // Spacing between rows
                crossAxisSpacing:
                    8.0, // Spacing between columns (not visible with 1 crossAxisCount)
                childAspectRatio:
                    3.5, // Adjust this ratio as needed for the card's width/height
              ),
              itemCount: listOfImages.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(
                    0,
                  ), // Margin is now handled by GridView's spacing
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    listOfImages[index],
                    width: double.infinity, // Image takes full available width
                    height:
                        mq.height * 0.07, // Image height is 7% of screen height
                    fit: BoxFit.cover, // Image covers its space
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
