import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g62_app_componentes/models/response_user_model.dart';

class ListviewBuilderView extends StatefulWidget {
  const ListviewBuilderView({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderView> createState() => _ListviewBuilderViewState();
}

class _ListviewBuilderViewState extends State<ListviewBuilderView> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  ResponseUserModel user = ResponseUserModel();
  List<DataUserModel> users = [];

  void fetchData() async {
    var dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": 1,
      },
    );

    user = ResponseUserModel.fromJson(response.data);
    users = user.data ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage("${user.avatar}"),
            ),
            title: Text("${user.firstName} ${user.lastName}"),
            subtitle: Text("${user.email}"),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 16.0,
            ),
          );
        },
      ),
    );
  }
}
