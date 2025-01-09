import 'package:flutter/material.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});

  @override
  State<Furniture> createState() => _FurnitureState();
}

List<Item> items = [
  Item(
      'Prevue Pet Products Catville Loft Cat Furniture',
      99.99,
      'A multi-level cat tree with sisal-wrapped posts and cozy hideaways, perfect for climbing and scratching.',
      'https://tse3.mm.bing.net/th?id=OIP.LN-pzKd2IsxU2rJYllrOjQHaHa&pid=Api'),
  Item(
      'Snoozer Luxury Dog Sofa with Memory Foam',
      129.99,
      'A comfortable dog sofa featuring memory foam for joint support and a stylish design to complement your home decor.',
      'https://tse3.mm.bing.net/th?id=OIP.hfq1TScxDzC_vA3XjENPzAHaHa&pid=Api'),
  Item(
      'Enchanted Home Pet Quicksilver Sofa Dog Bed',
      149.99,
      'A plush sofa-style bed with a tufted cushion and raised sides, providing a cozy spot for your pet to rest.',
      'https://tse1.mm.bing.net/th?id=OIP.wOaIpXibMleNxlMtmUvdwQHaHa&pid=Api'),
  Item(
      'IKEA LURVIG Pet Bed',
      39.99,
      'A simple and modern pet bed with a removable, washable cover, designed to blend seamlessly with your home furnishings.',
      'https://tse3.mm.bing.net/th?id=OIP.U-PtREEFB4lRzNoysDMlqwHaHa&pid=Api'),
  Item(
      'Arf Pets Foldable Pet Steps',
      119.99,
      'Foldable pet steps in espresso, providing easy access to higher furniture for small or elderly pets.',
      'https://tse1.mm.bing.net/th?id=OIP.mGkXGZQkzqu0_3X8qsKTTAHaHa&pid=Api'),
  Item(
      'FurHaven Pet Products Deluxe Mattress Dog Bed',
      19.99,
      'A versatile mattress bed suitable for dogs of all sizes, offering a comfortable sleeping surface.',
      'https://tse3.mm.bing.net/th?id=OIP.H7F5pMxgSQztWwZ8lGB1SwHaHa&pid=Api'),
  Item(
      'Fandango Cat Furniture Cat Condo',
      199.99,
      'A handcrafted cat condo with multiple levels and scratching posts, providing entertainment and relaxation for your feline friend.',
      'https://tse3.mm.bing.net/th?id=OIP.xyE92B_GRJpFg_ACvWGe5AAAAA&pid=Api'),
  Item(
      'Amish Outlet Store Benson Pet Toy Box',
      336.00,
      'A handcrafted wooden toy box for pets, perfect for storing toys and keeping your home organized.',
      'https://tse4.mm.bing.net/th?id=OIP.nBAsUxe8K_z77fkiEfyUUAHaJg&pid=Api'),
  Item(
      'ArchiExpo Pet Furniture',
      90.00,
      'A collection of modern and stylish pet furniture pieces, including beds, sofas, and accessories, designed to complement contemporary interiors.',
      'https://tse2.mm.bing.net/th?id=OIP.L7EXU9WvxX7q2HnnyO410QAAAA&pid=Api'),
  Item(
      'Alibaba Wholesale Dog Furniture',
      120.00,
      'A range of wholesale dog furniture options, including training chairs, benches, and tables, suitable for various needs and preferences.',
      'https://tse2.mm.bing.net/th?id=OIP.elLV68xtUy4bOyGSh1LKIwHaHa&pid=Api'),
];

class _FurnitureState extends State<Furniture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Furniture'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 10),
              Image.network(items[index].image),
              Text(items[index].toString()),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    addToCart(items[index]);
                  });
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const Cart();
                  }));
                },
                child: const Text('Add To Cart'),
              ),
              const SizedBox(height: 30),
            ],
          );
        },
      ),
    );
  }
}
