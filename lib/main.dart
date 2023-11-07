import 'package:flutter/material.dart';
import 'package:youtube_materialbanner/services/user_api.dart';
import 'package:youtube_materialbanner/model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  User? users;
  bool isLoading = false;
  
  @override
  void initState() { 
    super.initState();
    fetchUsers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Rest API Call'),
        ),
      ),
      body: isLoading ? const Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: users!.results.length,
        itemBuilder: (context, index) {
          var userData = users!.results[index];
          return ListTile(
            title: Text(userData.name.title) ,
            subtitle: 
            Text("${userData.name.first} ${userData.name.last}"),
          );
        },
      ),
    );
  }
  Future<void> fetchUsers() async{
    setState(() {
      isLoading = true;
    });
      users = await UserApi.fetchUsers();
   setState(() {
       print("Jai Balaya Resp : ${users!.results.length}");
       isLoading = false;
    });
  } 
}
