import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Choose Your Level",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 330,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 50,
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.sports_handball,size: 50,),
                        SizedBox(height: 70,),
                        Text("Average",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)],
                    ),
                  );
                }),
          ),
          Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: const Center(
                  child: Icon(CupertinoIcons.forward,color: Colors.white,),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Skip for now",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
