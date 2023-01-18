import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 25, right: 10),
              decoration: const BoxDecoration(color: Colors.white),
              child: const Text(
                'Hi Developer, How are you?',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 10, right: 20),
              decoration: const BoxDecoration(
                color: Color(0xFFE4FFDCA),
              ),
              child: const Text(
                'Hi Developer, How are you? sadjdpaşdwiqşkşqgjliqlşiwkf asdkljadlşsfajfasjfşlqwekopeqwj sakldjasşfkapi,sfkaslşjd',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
