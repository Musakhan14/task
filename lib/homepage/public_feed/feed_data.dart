// feed_data.dart

import 'package:flutter/material.dart';

final List<Map<String, dynamic>> feedData = [
  {
    "personIcon": const Icon(Icons.person),
    "userName": const Text('James'),
    "tickMarkImage": Image.asset('images/tickmark.png'),
    "timeAgo": const Text('. 1 hour'),
    "topicName": const Text('Topic name'),
    "postContent": const Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    "postImage": null,  // No image provided
  },
  {
    "personIcon": const Icon(Icons.person),
    "userName": const Text('Alice'),
    "tickMarkImage": Image.asset('images/tickmark.png'),
    "timeAgo": const Text('. 2 hours'),
    "topicName": const Text('Another topic'),
    "postContent": const Text(
      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    "postImage": Image.asset('images/Photo.png'),  // Image provided
  },
  // Add more items as needed
];
