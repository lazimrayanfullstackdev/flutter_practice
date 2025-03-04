import 'package:flutter/material.dart';
import 'package:todoapp/ProductController.dart';

class ApiCrud extends StatefulWidget {
  const ApiCrud({super.key});

  @override
  State<ApiCrud> createState() => _ApiCrudState();
}

class _ApiCrudState extends State<ApiCrud> {

  final ProductController productController = ProductController();

  void productDialog({String? id, int? code, String? name, int? qty, String? img, int? unitPrice, int? totalPrice}){


    TextEditingController productNameController = TextEditingController();
    TextEditingController productCodeController = TextEditingController();
    TextEditingController productQtyController = TextEditingController();
    TextEditingController productImageController = TextEditingController();
    TextEditingController productUnitPriceController = TextEditingController();
    TextEditingController productTotalPriceController = TextEditingController();

    productNameController.text = name ?? "";
    productQtyController.text = qty.toString() ?? '';
    productImageController.text = img ?? '';
    productCodeController.text = code.toString() ?? '';
    productUnitPriceController.text = unitPrice.toString() ?? '';
    productTotalPriceController.text = totalPrice.toString() ?? '';


    showDialog(context:  context, builder: (context) =>AlertDialog(
      title: Text(id == null ? "Add Product" : "Update Product"),
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
            controller: productImageController,
            decoration: InputDecoration(
                labelText: "Product Image"
            ),
          ),
          TextField(
            controller: productCodeController,
            decoration: InputDecoration(
                labelText: "Product Code"
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
              ElevatedButton(onPressed: () {

                  if(id== null){
                    productController.createProduct(productNameController.text, productImageController.text, productCodeController.text, int.parse(productQtyController.text), int.parse(productUnitPriceController.text), int.parse(productTotalPriceController.text));
                  }else{
                    productController.updateProduct(id,productNameController.text, productImageController.text, productCodeController.text, int.parse(productQtyController.text), int.parse(productUnitPriceController.text), int.parse(productTotalPriceController.text));
                  }
                  fetchData();
                  Navigator.pop(context);
                  setState(() {});
              }, child: Text(id == null ? "Add Product" : "Update Product", style: TextStyle(color: Colors.white),), style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),),
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
                leading: Image.network(product.img.toString(), width: 50,),
                title: Text(product.productName.toString(),style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text('Price: \$${product.unitPrice}  | Qty: ${product.qty}', style: TextStyle(),),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: ()=>productDialog(
                        id : product.sId,
                        code: product.productCode,
                        name: product.productName ,
                        qty: product.qty,
                        img: product.img,
                        unitPrice: product.unitPrice,
                        totalPrice: product.totalPrice,
                    ), icon: Icon(Icons.edit)),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        productController.deleteProduct(product.sId.toString()).then((value){
                          if(value){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Product Deleted"),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Something went wrong, try again"),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        });
                      });

                    }, icon: Icon(Icons.delete, color: Colors.red,))
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
