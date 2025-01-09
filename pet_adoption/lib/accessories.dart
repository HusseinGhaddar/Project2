import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';
import 'package:http/http.dart' as http;

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

/* Item(
      'KONG Classic Dog Toy',
      12.99,
      'A durable rubber toy that can be stuffed with treats, perfect for chewing and mental stimulation.',
      'https://tse3.mm.bing.net/th?id=OIP.DwBQA_UAZaEwWgPHHS5-sQAAAA&w=200&h=200&c=7'),
  Item(
      'Frisco Fold & Carry Double Door Dog Crate',
      45.99,
      'A foldable metal crate with double doors, providing a secure space for your dog at home or on the go.',
      'https://tse3.mm.bing.net/th?id=OIP.q2_STWwz7xT9qXv7_IsK8AHaHa&w=200&h=200&c=7'),
  Item(
      'PetSafe Easy Walk Dog Harness',
      19.95,
      'A no-pull harness designed to gently discourage your dog from pulling during walks.',
      'https://tse2.mm.bing.net/th?id=OIP.mJnCb0npgkabOYq6wwF_KAHaHa&w=200&h=200&c=7'),
  Item(
      'Outward Hound Fun Feeder Slo Bowl',
      14.99,
      'A slow-feeder bowl that promotes healthy eating habits by slowing down your pets eating pace.',
      'https://tse1.mm.bing.net/th?id=OIP.raJsJc7woHmJyAefSqntiAHaEt&w=200&h=127&c=7'),
  Item(
      'Blueberry Pet Essentials Classic Dog Collar',
      9.99,
      'A durable and stylish nylon dog collar available in various colors and sizes.',
      'https://tse4.mm.bing.net/th?id=OIP.LOdo358yYnfKCu_MGWhhUAHaJQ&w=200&h=250&c=7'),
  Item(
      'PetFusion Ultimate Dog Bed',
      69.95,
      'A comfortable memory foam dog bed with a water-resistant and tear-resistant cover.',
      'https://tse3.mm.bing.net/th?id=OIP.oQtj87OZzOTCJ0bt1JFV3QHaDv&w=200&h=112&c=7'),
  Item(
      'Catit Flower Fountain',
      24.99,
      'A compact and ergonomic water fountain that provides fresh, filtered water for your cat.',
      'https://tse4.mm.bing.net/th?id=OIP.t2fA4BF37zoyk6OtJcfC3AHaHa&w=200&h=200&c=7'),
  Item(
      'GoTags Personalized Pet ID Tag',
      7.95,
      'A customizable pet ID tag made of stainless steel, ensuring your pets safety with engraved contact information.',
      'https://tse2.mm.bing.net/th?id=OIP.F11gOJ-Vm1PYJXWsDBHNSAHaE9&w=200&h=134&c=7'),
  Item(
      'PetAmi Premium Pet Carrier Backpack',
      39.99,
      'A ventilated and comfortable backpack carrier, ideal for small pets during travel or outdoor adventures.',
      'https://tse4.mm.bing.net/th?id=OIP.ErI070R_NbmfNKqHG5CGzwHaJ8&w=200&h=268&c=7'),
  Item(
      'Earth Rated Dog Poop Bags',
      5.99,
      'Eco-friendly and leak-proof poop bags, making waste disposal convenient during walks.',
      'https://tse4.mm.bing.net/th?id=OIP.wWMnu1F0JzDIt4rv3X5iQwHaHC&w=200&h=190&c=7'), */
List<Item> items = [];

class _AccessoriesState extends State<Accessories> {
  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  void fetchItems() async {
    const url = 'http://localhost/fetchItems.php';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        items = data.map((obj) {
          String itemTitle = obj['title'].toString();
          double itemPrice = double.parse(obj['price'].toString());
          String itemDesc = obj['description'].toString();
          String itemImage = obj['image'].toString();
          return Item(itemTitle, itemPrice, itemDesc, itemImage);
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pet Accessories'),
          backgroundColor: Colors.blue,
        ),
        body: Column(children: [
          //TextField(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Image.network(items[index].image),
                    subtitle: Text(
                        'Title: ${items[index].title} /n Price: ${items[index].price}/n description: ${items[index].desc}'),
                  );
                }),
          )
        ]));
  }
}
