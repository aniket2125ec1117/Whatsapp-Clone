import 'package:flutter/material.dart';
import 'package:whatsappclone/colors.dart';
import 'package:whatsappclone/widgets/contacts_list.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor,
              elevation: 0,
              title:const Text('Whatsapp',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              centerTitle: false,
              actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.grey,),),
                PopupMenuButton(
                color: Colors.grey,
                    itemBuilder: (BuildContext context){
                  return [
                    PopupMenuItem(child: Text('New Contact')),

                    PopupMenuItem(child: Text('Create Group')),
                    
                    PopupMenuItem(child: Text('New Community'))

                  ];
                }),
              ],
              bottom: const TabBar(
                  indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                Tab(text: 'CHATS',),
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS',)
              ]),

            ),
            body: ContactList(),
          )
    );
  }
}
