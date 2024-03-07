import 'package:flutter/material.dart';

class CommunicationItem extends StatefulWidget {
  final String imagePath;
  final String emoji;
  bool isMicrophoneMuted;

  CommunicationItem({
    super.key,
    required this.imagePath,
    required this.emoji,
    required this.isMicrophoneMuted,
  });

  @override
  _CommunicationItemState createState() => _CommunicationItemState();
}

class _CommunicationItemState extends State<CommunicationItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(widget.imagePath),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Text(widget.emoji, style: const TextStyle(fontSize: 20)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.isMicrophoneMuted = !widget.isMicrophoneMuted;
                    });
                  },
                  child: Icon(
                    widget.isMicrophoneMuted ? Icons.mic_off : Icons.mic,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
