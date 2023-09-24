import 'package:flutter/material.dart';
import '../module08.dart';
//import '../style.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  // var _controller = TextEditingController();
  // bool addVisibility = true;
  // bool updateVisibility = false;
  // int id = 0;
  // String item = '';
  // String? itemForUpdate = null;
  // List toDo = [];
  // int indexForUpdate = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module08()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Container(
        // padding: EdgeInsets.all(10),
        // child: Column(
        //   children: [
        //     Visibility(
        //       maintainSize: false, 
        //       maintainAnimation: true,
        //       maintainState: true,
        //       visible: addVisibility, 
        //       child: Row(
        //         children: [
        //           Expanded(
        //             flex: 70,
        //             child: TextFormField(
        //               controller: TextEditingController(),
        //               decoration: appInputStyle('Item'),
        //               onChanged: (value){
        //                 item = value;
        //               },
        //             ),
        //           ),
        //           SizedBox(width: 10,),
        //           Expanded(
        //             flex: 30,
        //             child: ElevatedButton(
        //               onPressed: (){
        //                 if(item != ''){
        //                   id = id+1;
        //                   setState(() {
        //                     addToDo(Player(id.toString(), item));
        //                     //addToDo();
        //                     //viewPlayerData();
        //                     print(toDo);
        //                   });
        //                   item = '';
        //                 }
        //               },
        //               child: Text('Add'),
        //               style: appElevatedButtonStyle(),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     SizedBox(height: 10,),
        //     Visibility(
        //       maintainSize: false, 
        //       maintainAnimation: true,
        //       maintainState: true,
        //       visible: updateVisibility, 
        //       child: Row(
        //         children: [
        //           Expanded(
        //             flex: 70,
        //             child: TextFormField(
        //               controller: _controller,
        //               decoration: appInputStyle('Item'),
        //               onChanged: (value){
        //                 item = value;
        //               },
        //             ),
        //           ),
        //           SizedBox(width: 10,),
        //           Expanded(
        //             flex: 30,
        //             child: ElevatedButton(
        //               onPressed: (){
        //                 if(item != ''){
        //                   setState(() {
        //                     //toDo[indexForUpdate] = {'id':id.toString(), 'item':item};
        //                   });
        //                   item = '';
        //                   addVisibility = true;
        //                   updateVisibility = false;
        //                 }
        //               },
        //               child: Text('Update'),
        //               style: appElevatedButtonStyle(),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       child: ListView.builder(
        //         itemCount: toDos.length,
        //         itemBuilder: (context, index) {
        //           return Card(
        //             child: SizedBox(
        //               height: 50,
        //               width: double.infinity,
        //               child: Container(
        //                 alignment: Alignment.center,
        //                 padding: EdgeInsets.all(10),
        //                 child: Row(
        //                   children: [
        //                     Expanded(
        //                       flex: 80,
        //                       child: Text(toDos[index]['id']+' '+toDos[index]['item'], style: TextStyle(fontSize: 18, color: Colors.green)),
        //                       //child: Text(readPlayerData(File('assets/json/todo.json').readAsString()).jsonResponse[index]['item'])
        //                       //child: Text('asdfg'),
        //                     ),
        //                     Expanded(
        //                       flex: 10,
        //                       child: TextButton(
        //                         onPressed: (){
        //                           addVisibility = false;
        //                           updateVisibility = true;
        //                           _controller.text = toDos[index]['item'];
        //                           indexForUpdate = index;
        //                           setState(() {
                                    
        //                           });
        //                         },
        //                         child: Icon(Icons.change_circle, color: Colors.green,),
        //                       ),
        //                     ),
        //                     Expanded(
        //                       flex: 10,
        //                       child: TextButton(
        //                         onPressed: (){
        //                           setState(() {
        //                             deleteToDo(index);
        //                           });
        //                         },
        //                         child: Icon(Icons.delete, color: Colors.red,),
        //                       ),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             )
        //           );
        //         },
        //       )
        //     )
        //   ],
        // ),
      )
    );
  }
}