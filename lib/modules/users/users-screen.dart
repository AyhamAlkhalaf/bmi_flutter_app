import 'package:bmi_flutter_app/models/users/users-models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
   UserModel(
       id: 1,
       name: "ayham",
       phone: "1111111111"),
    UserModel(
        id: 2,
        name: "asma",
        phone: "22222"),
    UserModel(
        id: 3,
        name: "tea",
        phone: "33333333"),
    UserModel(
        id: 4,
        name: "ali",
        phone: "44444444"),
    UserModel(
        id: 5,
        name: "aysha",
        phone: "555555555"),
    UserModel(
        id: 1,
        name: "ayham",
        phone: "1111111111"),
    UserModel(
        id: 2,
        name: "asma",
        phone: "22222"),
    UserModel(
        id: 3,
        name: "tea",
        phone: "33333333"),
    UserModel(
        id: 4,
        name: "ali",
        phone: "44444444"),
    UserModel(
        id: 5,
        name: "aysha",
        phone: "555555555"),
    UserModel(
        id: 1,
        name: "ayham",
        phone: "1111111111"),
    UserModel(
        id: 2,
        name: "asma",
        phone: "22222"),
    UserModel(
        id: 3,
        name: "tea",
        phone: "33333333"),
    UserModel(
        id: 4,
        name: "ali",
        phone: "44444444"),
    UserModel(
        id: 5,
        name: "aysha",
        phone: "555555555"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body:ListView.separated(
          itemBuilder: (context , index) => buildUsersItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length) ,
    );
  }

  Widget buildUsersItem(UserModel users) =>  Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text("${users.id}",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(users.name,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
              Text(users.phone,
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),),
            ],
          ),
        ),
      ],
    ),
  );
}
