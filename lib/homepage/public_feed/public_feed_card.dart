import 'package:flutter/material.dart';

class PublicFeedCard extends StatefulWidget {
  final Icon personIcon;
  final Text userName;
  final Image tickMarkImage;  // Use 'final' for the tickMarkImage
  final Text timeAgo;
  final Text topicName;
  final Text postContent;
  final Image? postImage;

  const PublicFeedCard({
    super.key,
    required this.personIcon,
    required this.userName,
    required this.tickMarkImage,
    required this.timeAgo,
    required this.topicName,
    required this.postContent,
    this.postImage,
  });

  @override
  State<PublicFeedCard> createState() => _PublicFeedCardState();
}

class _PublicFeedCardState extends State<PublicFeedCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Card(
        color: const Color(0xffecf3f6),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        child: widget.personIcon,
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              widget.userName,
                              const SizedBox(width: 3),
                              // widget.tickMarkImage,
                              widget.timeAgo,
                            ],
                          ),
                          widget.topicName,
                        ],
                      ),
                    ],
                  ),
                  const Icon(Icons.hdr_weak),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: widget.postContent,
            ),
            if (widget.postImage != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: widget.postImage,
              ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Row(
                children: [
                  Icon(Icons.favorite_outline),
                  SizedBox(width: 12),
                  Icon(Icons.message_outlined),
                  SizedBox(width: 12),
                  Icon(Icons.send_outlined),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class PublicFeedCard extends StatefulWidget {
//   final Image? postImage;
//   const PublicFeedCard({this.postImage, super.key});
//
//   @override
//   State<PublicFeedCard> createState() => _PublicFeedCardState();
// }
//
// class _PublicFeedCardState extends State<PublicFeedCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 5),
//       child: Card(
//         color: const Color(0xffecf3f6),
//         // color: Colors.blue.shade50, // No const here
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       const CircleAvatar(
//                         backgroundColor: Colors.blueAccent,
//                         child: Icon(Icons.person),
//                         // backgroundImage: Image.asset('images/logo.png'),
//                       ),
//                       const SizedBox(width: 15),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               const Text('James'),
//                               const SizedBox(width: 3),
//                               Image.asset('images/tickmark.png'),
//                               const Text('. 1 hour'),
//                             ],
//                           ),
//                           const Text('Topic name'),
//                         ],
//                       ),
//                     ],
//                   ),
//                   const Icon(Icons.hdr_weak)
//                 ],
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(
//                 left: 12.0,
//                 right: 12,
//               ),
//               child: Text(
//                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//             if (widget.postImage != null)
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 12),
//                 child: widget.postImage,
//               ),
//             // Padding(
//             //   padding: const EdgeInsets.symmetric(vertical: 12),
//             //   child: Image.asset('images/Photo.png'),
//             // ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
//               child: Row(
//                 children: [
//                   Icon(Icons.favorite_outline),
//                   SizedBox(width: 12),
//                   Icon(Icons.message_outlined),
//                   SizedBox(width: 12),
//                   Icon(Icons.send_outlined),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
