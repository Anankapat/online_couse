import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          'Anankapat Robkeaw',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //Icon(Icons.handshake,size: 30.0,),
                        SizedBox(
                          width: 8.0,
                        ),
                        Image.asset(
                          'assets/images/hand.jpg',
                          width: 40.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(children: [
              Text(
                'Course',
                style: TextStyle(fontSize: 40.0),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 12,
                            offset: Offset(0, 10), //change position of shadow
                          ),
                        ]),
                    child: buildCategoryButton(),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Row buildCategoryButton() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6.0),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Icon(
            Icons.water_drop,
            color: Colors.lightBlue,
          ),
        ),
        Text(
          'All Topic',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
