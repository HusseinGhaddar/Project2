import 'package:flutter/material.dart';
import 'package:pet_adoption/accessories.dart';
import 'package:pet_adoption/clothes.dart';
import 'package:pet_adoption/furniture.dart';
import 'package:pet_adoption/pet_food.dart';
import 'package:pet_adoption/pet_toys.dart';
import 'package:pet_adoption/services.dart';

class ShopWidget extends StatefulWidget {
  const ShopWidget({super.key});

  @override
  State<ShopWidget> createState() => _ShopWidgetState();
}

class _ShopWidgetState extends State<ShopWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Shop By Categories',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const PetFood();
                          }));
                        },
                        child: const Text('Pet Food'))),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const PetToys();
                          }));
                        },
                        child: const Text('Pet Toys'))),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Accessories();
                          }));
                        },
                        child: const Text('Accessories'))),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Furniture();
                          }));
                        },
                        child: const Text('Furniture'))),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Clothes();
                          }));
                        },
                        child: const Text('Clothes'))),
                const SizedBox(
                  width: 100,
                ),
                SizedBox(
                    width: 150,
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Services();
                          }));
                        },
                        child: const Text('Services'))),
              ],
            ),
          ],
        )));
  }
}
