import 'package:flutter/material.dart';
import 'package:todoapp/ProductController.dart';

class ApiCrud extends StatefulWidget {
  const ApiCrud({super.key});

  @override
  State<ApiCrud> createState() => _ApiCrudState();
}

class _ApiCrudState extends State<ApiCrud> {

  final ProductController productController = ProductController();

  void productDialog(){
    TextEditingController productNameController = TextEditingController();
    TextEditingController productCodeController = TextEditingController();
    TextEditingController productQtyController = TextEditingController();
    TextEditingController productImageController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    showDialog(context:  context, builder: (context) =>AlertDialog(
      title: Text("Add Product"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: productNameController,
            decoration: InputDecoration(
              labelText: "Product Name"
            ),
          ),
          TextField(
            controller: productCodeController,
            decoration: InputDecoration(
                labelText: "Product Code"
            ),
          ),
          TextField(
            controller: productImageController,
            decoration: InputDecoration(
                labelText: "Product Image"
            ),
          ),
          TextField(
              controller: productQtyController,
            decoration: InputDecoration(
                labelText: "Product Qty"
            ),
          ),
          TextField(
            controller: productUnitPriceController,
            decoration: InputDecoration(
                labelText: "Product Unit Price"
            ),
          ),
          TextField(
            controller: productTotalPriceController,
            decoration: InputDecoration(
                labelText: "Product Total Price"
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Add Product", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),),
              SizedBox(width: 10,),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Close"),)
            ],
          )
        ],
      ),
    ));
  }

  Future<void> fetchData() async{
    await productController.fetchProduct();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: productController.products.length,
          itemBuilder: (context, index){
            var product = productController.products[index];
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListTile(
                leading: Image.network(product['Img'], width: 50,),
                title: Text(product['ProductName'],style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Price: \$${product['UnitPrice']}  | Qty: ${product['Qty']}', style: TextStyle(),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: ()=>productDialog(), icon: Icon(Icons.edit)),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,))
                  ],
                ),
              ),
            );
          }

      ),
      floatingActionButton: FloatingActionButton(onPressed: () => productDialog(), child: Icon(Icons.add),),
    );
  }
}
