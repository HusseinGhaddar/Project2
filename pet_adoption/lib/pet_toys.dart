import 'package:flutter/material.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';

class PetToys extends StatefulWidget {
  const PetToys({super.key});

  @override
  State<PetToys> createState() => _PetToysState();
}

List<Item> items = [
  Item(
      'Multipet Loofa Dog Toy',
      3.49,
      'A small, plush dog toy perfect for fetching and cuddling.',
      'https://tse2.mm.bing.net/th?id=OIP.1HYtvYGA86e53AYkM__JNQHaHa&w=200&h=200&c=7'),
  Item(
      'Multipet Cuzzle Buddies Wrinkleez Dog Toy',
      6.99,
      'A soft, wrinkly dog toy designed for interactive play',
      'https://tse3.mm.bing.net/th?id=OIP.DTiK5UPYNBTKmshN--I5qgHaHa&w=200&h=200&c=7'),
  Item(
      'Benebone Bacon Flavored Wishbone Dog Chew',
      12.99,
      'A durable chew toy infused with real bacon flavor to keep dogs entertained.',
      'https://tse3.mm.bing.net/th?id=OIP.XljMbbauqpJYf9jfZZI4TgHaHa&w=200&h=200&c=7'),
  Item(
      'Multipet Lamb Chop Plush Dog Toy',
      5.99,
      'A classic plush toy that squeaks, ideal for gentle chewers.',
      'https://tse4.mm.bing.net/th?id=OIP.cI16UwyKLGwa2FI0qhB8dwAAAA&w=200&h=161&c=7'),
  Item(
      'Chuckit! Ultra Ball',
      5.99,
      'A high-bounce, durable rubber ball designed for fetch games.',
      'https://tse4.mm.bing.net/th?id=OIP.eGlC0PTEBVOFF671_EV5eQHaIy&w=200&h=237&c=7'),
  Item(
      'Outward Hound Hide-A-Squirrel Puzzle Toy',
      14.99,
      'An interactive plush puzzle toy that challenges dogs to find and remove squeaky squirrels.',
      'https://tse1.mm.bing.net/th?id=OIP.lq7R_TRtmbZgNyxsutOsfQHaII&w=200&h=219&c=7'),
  Item(
      'Nylabone Dura Chew Textured Ring',
      7.99,
      'A long-lasting chew toy with textured surfaces to help clean teeth.',
      'https://tse1.mm.bing.net/th?id=OIP.Zbpdn-xj-F35xlg5S0YELwHaHa&w=200&h=200&c=7'),
  Item(
      'ZippyPaws Skinny Peltz No Stuffing Squeaky Plush Toy',
      9.99,
      'A set of three stuffing-free plush toys with squeakers, suitable for small to medium dogs.',
      'https://tse3.mm.bing.net/th?id=OIP.uWD-WzWBhy7uPcNU-ERWLAHaHa&w=200&h=200&c=7'),
  Item(
      'Petstages Catnip & Dental Health Chews',
      4.99,
      'A set of dental health chew toys infused with catnip, designed to help clean cats teeth.',
      'https://tse4.mm.bing.net/th?id=OIP.nCllRRNyNh_tiMwDGuuWIQHaIo&w=200&h=233&c=7'),
  Item(
      'Frisco Rope with 5 Knots Dog Toy',
      10.99,
      'A durable rope toy featuring five knots, ideal for large and extra-large dogs who enjoy interactive play and chewing.',
      'https://tse3.mm.bing.net/th?id=OIP.7kvYc-DdB9m9_m5jPkUx4gHaHa&w=474&h=474&c=7'),
];

class _PetToysState extends State<PetToys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Toys'),
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
