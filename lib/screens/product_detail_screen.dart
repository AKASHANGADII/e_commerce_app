import 'package:e_commerce_app/providers/cart_provider.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/product-detail-screen";

  @override
  Widget build(BuildContext context) {
    final productdata = ModalRoute.of(context)?.settings.arguments as List;
    final name = productdata[0];
    final url = productdata[1];
    final discription = productdata[2];
    final price = productdata[3];
    final id=productdata[4];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: Image.network(url),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      child: Text(name),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text("Product Details :"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(discription),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Price : ${price.toString()} Rs.",style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                          final n=CartItems();
                          n.addToCart(name,id,url,price);
                      },
                      child: Container(
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Add To Cart"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Buy Now"),
                        ),
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
