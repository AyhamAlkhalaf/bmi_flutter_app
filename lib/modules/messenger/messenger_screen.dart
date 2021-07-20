import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://pm1.narvii.com/6482/c526feafe9b4a0e65aad499cc085dbc87715c2bf_hq.jpg"),
            ),
            SizedBox(width: 15,),
            Text("Chat",style: TextStyle(
              color: Colors.black,
            ),),
          ],
        ),
        actions: [
         IconButton(onPressed: (){},
           color: Colors.black,
        icon: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.camera_alt,
            size: 16,
            color:Colors.white,
          ),
        ),),
          IconButton(onPressed: (){},
            color: Colors.black,
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color:Colors.white,
              ),
            ),),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(width: 15,),
                      Text("search"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(width: 20,),
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 20,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 20,),
                  itemCount: 15)


            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem(){
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius:30.0,
              backgroundImage: NetworkImage("https://pm1.narvii.com/6482/c526feafe9b4a0e65aad499cc085dbc87715c2bf_hq.jpg"),
            ),
            CircleAvatar(
              radius:8,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green.shade400,
              ),
            ),

          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ayham ali alkhalaf",
                maxLines: 1 ,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
              SizedBox(height: 6,),
              Row(
                children: [
                  Expanded(
                    child: Text("hello my name is ayham ayham haw are you now my friend",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ) ,
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '02:00 pm',
                    style:TextStyle(
                      fontWeight: FontWeight.w600,
                    ) ,
                  ),
                ],
              )

            ],
          ),
        )
      ],
    );
  }


  Widget buildStoryItem() => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius:30.0,
              backgroundImage: NetworkImage("https://pm1.narvii.com/6482/c526feafe9b4a0e65aad499cc085dbc87715c2bf_hq.jpg"),
            ),
            CircleAvatar(
              radius:8,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3,
                end: 3,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green.shade400,
              ),
            ),

          ],
        ),
        SizedBox(height: 6,),
        Text(
          "ayham ali alkhalaf ",
          maxLines: 2,
          overflow:TextOverflow.ellipsis,
        ),
      ],),
  );


}
