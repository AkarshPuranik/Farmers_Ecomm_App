import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({Key? key, required this.messages}) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index) {
          bool isUserMessage = widget.messages[index]['isUserMessage'];
          return Container(
            margin: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment:
              isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: isUserMessage ? Colors.lightGreen[100] : Colors.blue[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isUserMessage ? 20 : 0),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(isUserMessage ? 0 : 20),
                      topLeft: Radius.circular(isUserMessage ? 20 : 0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  constraints: BoxConstraints(maxWidth: w * 2 / 3),
                  child: Text(
                    widget.messages[index]['message'].text.text[0],
                    style: TextStyle(
                      color: isUserMessage ? Colors.black87 : Colors.black87,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}
