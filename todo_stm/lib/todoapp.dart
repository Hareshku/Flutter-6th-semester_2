// do the statemanagement for the following code.
//
// File 1:
//
// import 'package:flutter/material.dart';
// import 'package:todo_app/pages/home_page.dart';
// import 'package:todo_app/synchronise_programming.dart';
// import 'ContainerPractice.dart';
// import 'Form.dart';
// import 'InfoPage.dart';
// import 'bottom_nav_bar.dart';
// import 'grid_view.dart';
//
// void main() {
// runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
// MyApp({super.key});
//
// @override
// Widget build(BuildContext context) {
// return MaterialApp(
// debugShowCheckedModeBanner: false,
// home: HomePage(),
// routes: {
// "/Home_page": (context) => const HomePage(),
// "/infoPage": (context) => const infoPage(),
// },
// );
// }
// }
//
//
// File 2:
// import 'package:flutter/material.dart';
// import 'package:todo_app/pages/Toggle_menu.dart';
//
// class HomePage extends StatefulWidget {
// const HomePage({super.key});
//
// @override
// State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
// List todolist = [
// ['Learn React', false],
// ['Learn flutter', false],
// ['Learn Java', false],
// ['Learn javaScript', false],
// ['Learn AI', false],
// ];
//
// @override
// Widget build(BuildContext context) {
// return Scaffold(
// drawer: const ToggleMenu(),
// floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
// backgroundColor: Colors.white30,
// appBar: AppBar(
// // leading: const ToggleMenu(),
// title: const Text("Todo App Bar"),
// centerTitle: true,
// actions: <Widget>[
// IconButton(onPressed: () {}, icon: const Icon(Icons.add_alert)),
// PopupMenuButton(
// itemBuilder: (BuildContext context) {
// return [
// const PopupMenuItem(child: Text('Item1')),
// const PopupMenuItem(child: Text('Item2')),
// const PopupMenuItem(child: Text('Item3')),
// const PopupMenuItem(child: Text('Item4')),
// ];
// },
// ),
// ],
// backgroundColor: Colors.deepPurple,
// foregroundColor: Colors.white,
// ),
// body: ListView.builder(
// itemCount: todolist.length,
// itemBuilder: (BuildContext context, index) {
// return Padding(
// padding: const EdgeInsets.only(
// top: 20,
// bottom: 0,
// right: 20,
// left: 20,
// ),
// child: Container(
// padding: const EdgeInsets.all(20),
// decoration: BoxDecoration(
// color: Colors.blue,
// borderRadius: BorderRadius.circular(15),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// todolist[index][0],
// style: const TextStyle(
// color: Colors.white,
// fontSize: 20,
// ),
// ),
// SizedBox(
// width: 80,
// child: Row(
// children: [
// IconButton(
// icon: const Icon(Icons.edit, color: Colors.white),
// onPressed: () {},
// ),
// IconButton(
// icon: const Icon(Icons.delete, color: Colors.white),
// onPressed: () {},
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// );
// },
// ),
// floatingActionButton: Expanded(
// child: Row(
// children: [
// Expanded(
// child: Padding(
// padding: const EdgeInsets.only(
// bottom: 0,
// left: 20,
// right: 20,
// ),
// child: ElevatedButton(
// onPressed: () {
// Navigator.of(context).pushNamed("/infoPage");
// },
// child: Text('Add new Items'),
// ),
// )),
// ],
// ),
// ));
// // );
// }
// }
//
//
// File 3:
// import 'package:flutter/material.dart';
//
// class infoPage extends StatefulWidget {
// const infoPage({super.key});
//
// @override
// State<infoPage> createState() => _infoPageState();
// }
//
// class _infoPageState extends State<infoPage> {
// DateTime selectedDate = DateTime.now();
// TimeOfDay selectedTime = TimeOfDay.now();
// static const String id = "infoPage";
// @override
// Widget build(BuildContext context) {
// return MaterialApp(
// home: Scaffold(
// appBar: AppBar(
// title: Text("InfoPage"),
// centerTitle: true,
// backgroundColor: Colors.deepPurple,
// ),
// body: Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(
// top: 30,
// left: 10,
// right: 10,
// bottom: 20,
// ),
// child: TextFormField(
// decoration: const InputDecoration(
// hintText: "Title",
// border: OutlineInputBorder(),
// label: Text("Title"),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// top: 30,
// left: 10,
// right: 10,
// bottom: 20,
// ),
// child: TextFormField(
// maxLines: 6,
// decoration: const InputDecoration(
// hintText: "write discription here",
// border: OutlineInputBorder(),
// ),
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(
// left: 30,
// ),
// child: Row(
// children: [
// // Text("${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}"),
// ElevatedButton(
// onPressed: () async {
// final DateTime? dateTime = await showDatePicker(
// context: context,
// initialDate: selectedDate,
// firstDate: DateTime(2000),
// lastDate: DateTime(3000),
// );
// if (dateTime != null) {
// setState(() {
// selectedDate = dateTime;
// });
// }
// },
// child: const Text("Choose date"),
// ),
// SizedBox(
// width: 20,
// ),
// ElevatedButton(
// onPressed: () async {
// final TimeOfDay? timeOfDay = await showTimePicker(
// context: context,
// initialTime: selectedTime,
// initialEntryMode: TimePickerEntryMode.dial,
// );
// if (timeOfDay != null) {
// setState(() {
// selectedTime = timeOfDay;
// });
// }
// },
// child: Text("Choose Time"),
// ),
// ],
// ),
// ),
// ],
// ),
// floatingActionButton: FloatingActionButton(
// child: Icon(Icons.add),
// onPressed: () {
// Navigator.of(context).pop();
// },
// )),
// );
// }
// }
//
//
//
// File 4:
// import 'package:flutter/material.dart';
//
// class Todoitems extends ChangeNotifier {
// List<Map<String, dynamic>> _Mydata = [];
//
// void addData(Map<String, dynamic> data) {
// _Mydata.add(data);
// notifyListeners();
// }
//
// void updateData(Map<String, dynamic> upDatedData, int index) {
// _Mydata[index] = upDatedData;
// notifyListeners();
// }
//
// void deleteData(int index) {
// _Mydata.removeAt(index);
// notifyListeners();
// }
//
// List<Map<String, dynamic>> getData() => _Mydata;
// }
//
//
