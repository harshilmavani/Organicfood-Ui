import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int a = 0;
  List color = [
    Colors.orange.shade200,
    Colors.lightGreen.shade200,
    Colors.orange.shade300,
    Colors.red.shade200,
  ];

  List fontcolor = [
    Colors.orange.shade300,
    Colors.green.shade200,
    Colors.orangeAccent,
    Colors.red.shade400,
  ];

  List list1 = ['spain', 'italy', 'ukarain', 'Holland'];
  List name = ['Peach', 'Basil', 'Pumpkin', 'Tamoto'];
  List price = ['\$3.15', '\$1.50', '\$3.50', '\$5.75'];
  List kg = ['(Kg)', '(Pg)', '(Kg)', '(Kg)'];
  List pic = ['assets/image/Basil.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "My Cart",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade500,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/image/woman.png',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  4,
                  (index) => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: color[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: fontcolor[index],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              list1[index],
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              price[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Name(),
                                Text(
                                  kg[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
                color: Color(0xffbab63b),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 49),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Total:',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$13.90',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          height: 45,
                          minWidth: 150,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Color(0xffbab63b),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              a++;
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(10),
              ),
            ),
            child: Icon(
              Icons.add,
              size: 18,
            ),
          ),
        ),
        Container(
          height: 35,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade100,
          ),
          child: Center(
            child: Text(
              '$a',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            if (a > 0) {
              setState(() {
                a--;
              });
            }
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0.1,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.horizontal(
                right: Radius.circular(10),
              ),
            ),
            child: Icon(
              Icons.remove,
              size: 18,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
