import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tes_cli/app/data/models/user_model.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserView'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>>(
          future: controller.getAllUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.data?.length == 0) {
              return Center(
                child: Text("Tidak Ada Data"),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    User user = snapshot.data![index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatar!),
                      ),
                      title: Text("${user.firstName} ${user.lastName}"),
                      subtitle: Text("${user.email}"),
                    );
                  });
            }
          }),
    );
  }
}
