import 'package:crud/model.dart';
import 'package:crud/repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Dosen> listDosen = [];
  Repository repository = Repository();

  getData() async{
    listDosen = await repository.getData();
  }

@override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(child: Text(listDosen[index].nama),);
        }, separatorBuilder: (context, index){
          return Divider();
        }, itemCount: listDosen.length,

    ));
  }
}