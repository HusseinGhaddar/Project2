import 'package:flutter/material.dart';
import 'package:pet_adoption/cart.dart';
import 'package:pet_adoption/item.dart';

class PetPharmacy extends StatefulWidget {
  const PetPharmacy({super.key});

  @override
  State<PetPharmacy> createState() => _PetPharmacyState();
}

List<Item> items = [
  Item(
      "Frontline Plus for Dogs",
      36.99,
      "Topical flea and tick treatment for dogs, effective for 30 days.",
      "https://tse4.mm.bing.net/th?id=OIP.dtDjA0zapxC_XcId-gYrygHaHa&w=200&h=200&c=7"),
  Item(
      "Advantage II for Cats",
      49.98,
      "Monthly topical flea prevention for cats, killing fleas through contact.",
      "https://tse3.mm.bing.net/th?id=OIP.HI2Z2GDw0W0JNK4T-dslZQHaIb&w=200&h=227&c=7 "),
  Item(
      "Heartgard Plus for Dogs",
      45.99,
      "Chewable tablet preventing heartworm disease and treating hookworms and roundworms.",
      "https://tse4.mm.bing.net/th?id=OIP.Oc52pIClll2drfH_a3Z-uwHaHa&w=200&h=200&c=7 "),
  Item(
      "Cosequin DS Plus MSM Chewable Tablets",
      39.99,
      "Joint health supplement for dogs, supporting cartilage production and protecting existing cartilage.",
      "https://tse4.mm.bing.net/th?id=OIP.Lmiap1Jolq_-AN2bL_eqzwHaK2&w=200&h=293&c=7 "),
  Item(
      "Proviable DC for Cats and Dogs",
      21.99,
      "Probiotic supplement supporting a healthy intestinal balance in pets.",
      "https://tse4.mm.bing.net/th?id=OIP.ef-2Qog3Vxs6P5lLRwWVlwHaHa&w=200&h=200&c=7 "),
  Item(
      "Zymox Otic Pet Ear Treatment",
      22.79,
      "Enzymatic solution treating ear infections in dogs and cats without antibiotics.",
      "https://tse2.mm.bing.net/th?id=OIP.oDR_oHin0CD_v8HR8ZAeVQHaHa&w=200&h=200&c=7 "),
  Item(
      "Greenies Pill Pockets for Dogs",
      7.98,
      "Tasty treats designed to easily hide pills, making medication administration simple.",
      "https://tse4.mm.bing.net/th?id=OIP.IDRLafaxbPn3bQ0sKcrcMQHaHa&w=200&h=200&c=7 "),
  Item(
      "Vet's Best Enzymatic Dog Toothpaste",
      9.49,
      "Dental care gel reducing plaque and freshening breath in dogs.",
      "https://tse1.mm.bing.net/th?id=OIP.k-3V8AJpN4-bEvjOEyGUJwHaHa&w=200&h=200&c=7 "),
  Item(
      "K9 Advantix II for Dogs",
      53.99,
      "Monthly topical treatment repelling and killing fleas, ticks, and mosquitoes.",
      "https://tse3.mm.bing.net/th?id=OIP.OYEzZODWz3KoCgtDiNLnrAHaHa&w=200&h=200&c=7 "),
  Item(
      "PetArmor Plus for Cats",
      29.99,
      "Affordable flea and tick topical treatment for cats, effective for up to 30 days.",
      "https://tse4.mm.bing.net/th?id=OIP.oLegC4QwjbuUiJWV25gozAHaGE&w=200&h=164&c=7 "),
];

class _PetPharmacyState extends State<PetPharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharmacy'),
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
