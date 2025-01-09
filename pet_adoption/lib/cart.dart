import 'package:flutter/material.dart';
import 'package:pet_adoption/home.dart';
import 'package:pet_adoption/item.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

final List<Item> products = [];

void addToCart(Item item) {
  products.add(item);
}

void removeFromCart(Item item) {
  products.remove(item);
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 10),
              Image.network(products[index].image),
              Text(products[index].toString()),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    removeFromCart(items[index]);
                  });
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                child: const Text('Remove From Cart'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        },
      ),
    );
  }
}
