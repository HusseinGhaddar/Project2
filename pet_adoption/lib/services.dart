import 'package:flutter/material.dart';
import 'package:pet_adoption/home.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Services'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Adoption Services'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Veterinary Services'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Health Monitoring'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Grooming'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Training and Behavior'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Insurance'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Pet Boarding and Sitting'))),
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
                          return const HomePage();
                        }));
                      },
                      child: const Text('Lost and Found Services'))),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ])));
  }
}
