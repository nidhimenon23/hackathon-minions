import 'package:flutter/material.dart';
import 'package:food_ushur/model.dart';
import 'package:scoped_model/scoped_model.dart';

 List<Product> _products = [
    Product(
        id: 1,
        title: "Veg Meals",
        price: 20.0,
        imgUrl: "https://saihomefood.in/cdn/shop/products/meals.jpg?v=1571216142",
        qty: 1),
    Product(
        id: 2,
        title: "Non Veg Meals",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/banana.png",
        qty: 1),
    Product(
        id: 3,
        title: "Briyani",
        price: 20.0,
        imgUrl: "https://img.icons8.com/cotton/2x/orange.png",
        qty: 1),
    Product(
        id: 4,
        title: "Salad",
        price: 40.0,
        imgUrl: "https://img.icons8.com/cotton/2x/watermelon.png",
        qty: 1),
    Product(
        id: 5,
        title: "Curd Rice",
        price: 25.0,
        imgUrl: "https://img.icons8.com/cotton/2x/avocado.png",
        qty: 1),
  ];

var selectedProducts = CartModel();

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CartPage()),
  );
}
          )
        ],
      ),
      body:
      GridView.count(
       crossAxisCount: 2,
  children: List.generate(_products.length, (index) {
   return Card( child: Column( children: <Widget>[
              Image.network(_products[index].imgUrl, height: 60, width: 100,),
              Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\₹"+_products[index].price.toString()),
              ElevatedButton(
                    child: Text("Add"),
                    onPressed: () => selectedProducts.addProduct(_products[index]))
            ]));
  }),
),
      
    );
  }
}


class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
      return
      Scaffold(
      backgroundColor: Colors.indigo[50],
      floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      icon: const Icon(Icons.shop),
      label: const Text('Check Out'),
      backgroundColor: Colors.indigo,
      onPressed: () {
        if (selectedProducts.cart.isEmpty) {
       

        } else {

            if(selectedProducts.totalCartValue > 160.00)  {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("USHUR"),
    content: Text("Limit Exceeded. Max Limit is (160 RS)."),
    actions: [
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );


            }



        }







      },
    ),
    floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat,

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Cart")),
    body: 
    selectedProducts.cart.isEmpty ? Center(child: Text("No items in Cart")) :
    ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: selectedProducts.cart.length,
    itemBuilder: (BuildContext context, int index) {
     
    return  ListTile(
  title: Text('${selectedProducts.cart[index].title}'),
  subtitle: Text('Quantity : ${selectedProducts.cart[index].qty.toString()} ,Total : ₹ ${selectedProducts.cart[index].price * selectedProducts.cart[index].qty}  ') ,
  trailing: Wrap(
    spacing: 12, // space between two icons
    children: <Widget>[
        IconButton(icon: Icon(Icons.add),onPressed: () {

                                            setState(() {
                                               selectedProducts.updateProduct(selectedProducts.cart[index],selectedProducts.cart[index].qty + 1 );

                                            });
                                      },
                                    ), // icon-1
       IconButton(icon: Icon(Icons.remove),onPressed: () {

                                            setState(() {
                                               selectedProducts.updateProduct(selectedProducts.cart[index],selectedProducts.cart[index].qty - 1 );
                                            });

                                      },
                                    ) , // icon-2
    ],
  ),
);
      

    
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  
   )

  );
  }
}


