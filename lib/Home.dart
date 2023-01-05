import 'package:flutter/material.dart';
import 'data1.dart';
import 'data2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
              child: Text(
            "Talabat",
            style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 50),
          )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "What would you like to order?",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: food.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
                          width: 170,
                          child: Image.asset(
                            food[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                    ],
                  );
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Trending...",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 300,
            width: 400,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: trend.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          height: 200,
                          width: 350,
                          child: Image.asset(
                            trend[index].image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
