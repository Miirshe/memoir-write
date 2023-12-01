import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return (Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Notes',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                size: 25,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.circular(10),),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Searching Note...',
                  hintStyle: TextStyle(fontSize: 18),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(child: ListView.builder(itemCount:4,itemBuilder: (context , index) {
              return NoteCard();
            }))
          ],
        ),
      ),
    ));
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), 
        child: InkWell(
          borderRadius: BorderRadius.circular(10), 
          onTap: (){},
          child: Container(
            width: double.infinity,
            height: 180,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My note', style: TextStyle(fontSize: 25),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                        SizedBox(height: 10,),
                        Row(children: [
                          Icon(Icons.timer_outlined,size: 20,),
                          SizedBox(width: 10,),
                          Text('20 minute ago')
                        ],),
                        SizedBox(height: 15,),
                        Text(
                          'This my notes I will do it if allah says'+
                          'This my notes I will do it if allah says'+
                          'This my notes I will do it if allah says'+
                          'This my notes I will do it if allah says'+
                          'This my notes I will do it if allah says'+
                          'This my notes I will do it if allah says',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: double.infinity,
                  decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)
                  ),
        
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
