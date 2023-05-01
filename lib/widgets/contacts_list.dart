import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(

        padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: InkWell(
                    onTap: (){

                    },
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),style: TextStyle(
                        fontSize: 18
                      ),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(info[index]['message'].toString(),style: TextStyle(
                          fontSize: 15
                        ),),
                      ),
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey
                        ),
                      ),


                    ),
                  ),
                ),
                const Divider(color: dividerColor, indent: 75, )
              ],
            );

          }),
    );
  }
}
