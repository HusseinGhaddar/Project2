import 'package:flutter/material.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

List<Item> items = [
  Item(
      'Disney Pet Collar',
      12.00,
      'A stylish collar featuring Disney-themed designs, perfect for adding a touch of magic to your pet\'s look.',
      'https://tse3.mm.bing.net/th?id=OIP.gyydXSE4aSM1-CtrdMH2gwHaCl&pid=Api'),
  Item(
      'Pet Care Pet Clothing',
      10.00,
      'Comfortable and functional clothing designed to keep your pet cozy and stylish.',
      'https://tse4.mm.bing.net/th?id=OIP.gA65M17fvmbfpgKo4qSBxQHaHa&pid=Api'),
  Item(
      'Pet Harness',
      5.00,
      'A durable harness to ensure your pet\'s safety and comfort during walks.',
      'https://tse2.mm.bing.net/th?id=OIP.oMpwTSrc7UVOu8haWGO5TQHaHa&pid=Api'),
  Item(
      'Pet Bowl',
      10.00,
      'A sturdy and easy-to-clean bowl for your pet\'s food or water.',
      'https://tse1.mm.bing.net/th?id=OIP.yejg0d5IaOhJr1_P1yy4kQHaHa&pid=Api'),
  Item(
      'Pet Care Pet Clothing',
      8.00,
      'Affordable and comfortable clothing options for your pet\'s everyday wear.',
      'https://tse4.mm.bing.net/th?id=OIP.gA65M17fvmbfpgKo4qSBxQHaHa&pid=Api'),
  Item(
      'Pet Care Pet Clothing',
      18.00,
      'A stylish and functional clothing item to keep your pet looking great.',
      'https://tse4.mm.bing.net/th?id=OIP.gA65M17fvmbfpgKo4qSBxQHaHa&pid=Api'),
  Item(
      'Pet Collar',
      10.00,
      'A high-quality collar to ensure your pet\'s safety and style.',
      'https://tse2.mm.bing.net/th?id=OIP.u-25aAQCcVMGlKQLOFzhogAAAA&pid=Api'),
  Item(
      'Life Is Good Pet Harness',
      30.00,
      'A comfortable and durable harness featuring the \'Life Is Good\' brand design.',
      'https://tse3.mm.bing.net/th?id=OIP.qU8HLZ5MkugP6OiAGj8u2gHaHL&pid=Api'),
  Item(
      'Pet Care Pet Clothing',
      11.00,
      'A versatile clothing item designed for your pet\'s comfort and style.',
      'https://tse4.mm.bing.net/th?id=OIP.gA65M17fvmbfpgKo4qSBxQHaHa&pid=Api'),
  Item(
      'Pet Care Pet Clothing',
      20.00,
      'A premium clothing option to keep your pet looking fashionable and feeling comfortable.',
      'https://tse4.mm.bing.net/th?id=OIP.gA65M17fvmbfpgKo4qSBxQHaHa&pid=Api'),
];

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Clothes'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.network(items[index].image),
                Text(items[index].toString()),
                const SizedBox(
                  height: 20,
                ),
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
                const SizedBox(
                  height: 30,
                )
              ],
            );
          }),
    );
  }
}
