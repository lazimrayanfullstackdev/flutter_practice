import 'package:flutter/material.dart';

import 'model/expense.dart';

void main(){
  runApp(MaterialApp(home: ExpenseApp()));
}

class ExpenseApp extends StatefulWidget{
  const ExpenseApp({super.key});
  @override
  State<StatefulWidget> createState() => expenseState();
}

class expenseState extends State<ExpenseApp>{
  final List<Expense> _expense = [];
  final List<String> _category = ['Food', 'Transport','Bills','Entertainment'];
  double _total = 0.0;
  void _showForm(BuildContext context){
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    String selectedCategory = _category.first;
    showModalBottomSheet(context: context,
        isScrollControlled: true,
        builder: (_){
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 16
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Title"
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Amount"
                ),
              ),
              SizedBox(height: 10,),
              DropdownButtonFormField(
                  items: _category.map((category)=> DropdownMenuItem(value: category, child: Text(category))).toList(),
                  onChanged: (value) => selectedCategory = value!)
            ],
          ),
      );
        });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       title: Text("Expense Tracker"),
       backgroundColor: Colors.green,
       foregroundColor: Colors.white,
       actions: [
         IconButton(onPressed: () => _showForm(context), icon: Icon(Icons.add)),
       ],
     ),
     body: Column(
       children: [
         Center(
           child: Card(
             color: Colors.grey,
             margin: EdgeInsets.all(16),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Total: \$${_total}",style: TextStyle(fontSize: 22, color: Colors.white),),
             ),
           ),
         ),
         Expanded(
           child: ListView.builder(
             itemCount: _expense.length,
               itemBuilder: (context, index){
                 return Card(
                   child: ListTile(
                     leading: CircleAvatar(
                       backgroundColor: Colors.blueAccent,
                       child: Text(_expense[index].category),
                     ),
                     title: Text(_expense[index].title),
                     subtitle: Text(_expense[index].date.toString()),
                   ),
                 );
               }),
         )
       ],
     ),
     floatingActionButton: FloatingActionButton(onPressed: ()=> _showForm(context), child: Icon(Icons.add),)
   );
  }
}