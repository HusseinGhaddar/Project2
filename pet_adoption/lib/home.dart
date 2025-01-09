import 'package:flutter/material.dart';
import 'package:pet_adoption/accessories.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/furniture.dart';
import 'package:pet_adoption/item.dart';
import 'package:pet_adoption/pet_food.dart';
import 'package:pet_adoption/pet_pharmacy.dart';
import 'package:pet_adoption/pet_toys.dart';
import 'package:pet_adoption/shop_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Item> items = [
  Item(
      "Frontline Plus for Dogs",
      36.99,
      "Topical flea and tick treatment for dogs,\n effective for 30 days.",
      "https://tse4.mm.bing.net/th?id=OIP.dtDjA0zapxC_XcId-gYrygHaHa&w=200&h=200&c=7"),
  Item(
      "Advantage II for Cats",
      49.98,
      "Monthly topical flea prevention for cats,\n killing fleas through contact.",
      "https://tse3.mm.bing.net/th?id=OIP.HI2Z2GDw0W0JNK4T-dslZQHaIb&w=200&h=227&c=7 "),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Pet Adoption'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Shop',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 330,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ShopWidget();
                        }));
                      },
                      child: const Text('see all'))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: 90,
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const PetFood();
                            }));
                          },
                          child: const Text('Pet Food'))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 90,
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const PetToys();
                            }));
                          },
                          child: const Text('Pet Toys'))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 130,
                      height: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Accessories();
                            }));
                          },
                          child: const Text('Accessories'))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 110,
                      height: 70,
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
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Pet Pharmacy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Text color
                    ),
                  ),
                  const SizedBox(
                    width: 250,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const PetPharmacy();
                        }));
                      },
                      child: const Text('see all'))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.network(items[0].image),
                  Text(items[0].toString()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.network(items[1].image),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(items[1].toString()),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Cart();
                    }));
                  },
                  child: const Text('Go To Cart'))
            ],
          ),
        ));
  }
}

