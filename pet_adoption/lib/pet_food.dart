import 'package:flutter/material.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';

class PetFood extends StatefulWidget {
  const PetFood({super.key});

  @override
  State<PetFood> createState() => _PetFoodState();
}

List<Item> items = [
  Item(
      'Allprovide Dog Gently Cooked Beef 1lb',
      5.99,
      'A gently cooked beef meal for dogs made with fresh ingredients to support healthy nutrition.',
      'https://tse4.mm.bing.net/th?id=OIP.pK5xHE1jeYvPjDyKNnsAngHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Dog Gently Cooked Chicken 1lb',
      5.49,
      'A balanced chicken meal for dogs, crafted with high-quality natural ingredients.',
      'https://tse2.mm.bing.net/th?id=OIP.zwCvlNoDzdkymNPKeyp4UAHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Dog Gently Cooked Pork 1lb',
      6.25,
      'A wholesome pork meal, gently cooked to preserve nutrients for dogs of all life stages.',
      'https://tse3.mm.bing.net/th?id=OIP.BeIJfifcD1EamuUEXB079gHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Dog Gently Cooked Turkey 1lb',
      5.75,
      'A healthy turkey-based meal for dogs, rich in essential vitamins and minerals.',
      'https://tse1.mm.bing.net/th?id=OIP.hf_P_SiOQjXISrGfn8KjMwHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Dr. Judy Morgans Puploaf 1lb',
      7.99,
      'A specially formulated meatloaf for dogs, developed by Dr. Judy Morgan for optimal nutrition.',
      'https://tse4.mm.bing.net/th?id=OIP.TiwkITJRLhLHlj5BaaklZgHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Cat Gently Cooked Beef 1lb',
      5.99,
      'A natural beef meal for cats, gently cooked to support their dietary needs.',
      'https://tse1.mm.bing.net/th?id=OIP.6m45J47Y7K2UAIvRwxBrwwHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Cat Gently Cooked Chicken 1lb',
      5.49,
      'A fresh chicken recipe for cats, prepared to ensure a balanced and nutritious diet',
      'https://tse2.mm.bing.net/th?id=OIP.zwCvlNoDzdkymNPKeyp4UAHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Cat Gently Cooked Turkey 1lb',
      5.75,
      'A lightly cooked turkey-based meal for cats, packed with essential nutrients.',
      'https://tse1.mm.bing.net/th?id=OIP.hf_P_SiOQjXISrGfn8KjMwHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Cat Raw Ready-to-Cook Beef 1lb',
      6.49,
      'A raw, ready-to-cook beef option for cats, promoting a natural and fresh diet.',
      'https://tse1.mm.bing.net/th?id=OIP.9kDJc8rIq-nVj7E2fKyvMAHaHa&w=200&h=200&c=7'),
  Item(
      'Allprovide Cat Raw Ready-to-Cook Chicken 1lb',
      6.25,
      'A raw chicken meal for cats, designed to provide a wholesome and balanced nutrition option',
      'https://tse4.mm.bing.net/th?id=OIP.3isJfzg1DUoEGYj-ssc20QHaHa&w=200&h=200&c=7'),
];

class _PetFoodState extends State<PetFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Food'),
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
