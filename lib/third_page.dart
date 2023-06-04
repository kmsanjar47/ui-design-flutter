import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8, top: 12),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Center(
              child: Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 350,
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Icon(
                    CupertinoIcons.chevron_up,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Men's League",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Take part in a two hour session where",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "you can expect plenty of rallying followed",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "by competitive paint play team singles style",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 170,
                  child: GridView.builder(
                    shrinkWrap: true,
                      itemCount: 3,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                            border: Border.symmetric(
                              vertical: BorderSide(color: Colors.grey),
                              horizontal: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,children: [
                            const Icon(CupertinoIcons.calendar,size:20,color: Colors.white,),
                            const SizedBox(height: 10,),
                            Text("24 February",style: TextStyle(color: Colors.grey[600]),)
                          ],),
                        );
                      }),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: const Center(child: Text("Participate \$30"),),),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
