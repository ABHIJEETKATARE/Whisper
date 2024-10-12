import 'package:flutter/material.dart';
import 'package:whisper/info.dart';
import 'package:whisper/utils/colors.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    title: Text(
                      '${info[index]['name']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      '${info[index]['message']}',
                      style: TextStyle(fontSize: 15),
                    ),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(info[index]['profilePic'].toString()),
                    ),
                    trailing: Text(
                      '${info[index]['time']}',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              )
            ],
          );
        },
      ),
    );
  }
}
