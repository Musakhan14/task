import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/homepage/public_feed/public_feed_card.dart';

import 'feed_data.dart';

class PublicFeed extends StatefulWidget {
  const PublicFeed({super.key});

  @override
  State<PublicFeed> createState() => _PublicFeedState();
}

class _PublicFeedState extends State<PublicFeed> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,  // Minimize the column's height
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Feeds',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheetContent();
                    },
                  );
                },
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 3),
              itemCount: feedData.length,  // Use the imported feed data
              itemBuilder: (context, index) {
                final item = feedData[index];
                return PublicFeedCard(
                  personIcon: item["personIcon"],
                  userName: item["userName"],
                  tickMarkImage: item["tickMarkImage"],
                  timeAgo: item["timeAgo"],
                  topicName: item["topicName"],
                  postContent: item["postContent"],
                  postImage: item["postImage"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}




class BottomSheetContent extends StatelessWidget {
  final List<Map<String, dynamic>> topics = [
    {'icon': Icons.topic, 'text': 'Topic 1'},
    {'icon': Icons.topic, 'text': 'Topic 2'},
    {'icon': Icons.topic, 'text': 'Topic 3'},
    {'icon': Icons.topic, 'text': 'Topic 4'},
  ];

   BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [

            const Divider(
              thickness: 3, // Thickness of the line
              color: Colors.black, // Color of the line
              indent: 150, // Left spacing
              endIndent: 150, // Right spacing
            ),
            const SizedBox(height: 15),
            Column(
              children: topics.map((topic) {
                return ListTile(
                  leading: Icon(topic['icon']),
                  title: Text(topic['text']),
                  onTap: () {
                    Navigator.pop(context);
                    // Handle your onTap event here
                  },
                  hoverColor: Colors.green,  // Change hover color
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}