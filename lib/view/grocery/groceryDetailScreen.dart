import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GroceryDetailScreen extends StatefulWidget {
  const GroceryDetailScreen({Key? key}) : super(key: key);

  @override
  State<GroceryDetailScreen> createState() => _GroceryDetailScreenState();
}

class _GroceryDetailScreenState extends State<GroceryDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.location_on_outlined, color: Colors.black),
            Text('Address', style: TextStyle(color: Colors.black)),
            Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black)
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Center(
              child: FaIcon(FontAwesomeIcons.flagUsa, color: Colors.white),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.052,
              width: width,
              child: TextFormField(
                cursorColor: Colors.black26,
                style: const TextStyle(color: Colors.black26),
                scrollPhysics: const AlwaysScrollableScrollPhysics(),
                decoration: InputDecoration(
                    hintText: 'Search Food..',
                    hintStyle: const TextStyle(color: Colors.black26),
                    disabledBorder: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 16,
                      color: Colors.black26,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 7, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Your Favourite Picks',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(children: [
                        ...List.generate(
                            1,
                            (index) => Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * 0.21,
                                        width: width * 0.32,
                                        decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 2,
                                                  spreadRadius: 2,
                                                  offset: Offset(1, 1))
                                            ],
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ),
                                    Positioned(
                                      left: 7,
                                      top: 7,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: Container(
                                          height: height * .14,
                                          width: width * 0.28,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image.network(
                                              'https://tse2.mm.bing.net/th?id=OIP.N6P2_eCI88_sRu18mX2TEQHaE8&pid=Api&P=0&h=180',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 18,
                                        bottom: 9,
                                        child: Container(
                                          height: height * 0.038,
                                          width: width * 0.24,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: const Center(
                                              child: Text(
                                            'Add',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          )),
                                        ))
                                  ],
                                ))
                      ]))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 7, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Our Products',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Wrap(
              children: [
                ...List.generate(
                    9,
                    (index) => Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 8),
                              child: Container(
                                height: height * 0.21,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 2,
                                          spreadRadius: 2,
                                          offset: Offset(1, 1))
                                    ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                              ),
                            ),
                            Positioned(
                              left: 4,
                              top: 12,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Container(
                                  height: height * .14,
                                  width: width * 0.28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      image[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 15,
                                top: 123,
                                child: Column(
                                  children: [
                                    Text(
                                      'Friuts and',
                                    ),
                                    SizedBox(
                                      height: height * 0.001,
                                    ),
                                    Text('Vegetables')
                                  ],
                                ))
                          ],
                        ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

List image = [
  'https://tse1.mm.bing.net/th?id=OIP.Sa9ZfKEPzreh38i8xrwQJgHaEo&pid=Api&P=0&h=180',
  'https://tse3.mm.bing.net/th?id=OIP.W7XfYInqO36oypegwjrCYgHaFr&pid=Api&P=0&h=180',
  'https://tse3.mm.bing.net/th?id=OIP.-eSJo3nxrnVnoqVGUX431AHaGh&pid=Api&P=0&h=180',
  'https://tse3.mm.bing.net/th?id=OIP.fVteXNVbJejGLybVXCmQBwHaE8&pid=Api&P=0&h=180',
  'https://tse1.mm.bing.net/th?id=OIP.fBe1gguUHhEyZuradl-J6QHaEX&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.6yOk5vNynX2rhAUw-YdxQQHaE7&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.eD7MpRmuCp5oKFlcdoKmuwHaE8&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&pid=Api&P=0&h=180',
  'https://tse2.mm.bing.net/th?id=OIP.i5Yx6SWyxlzFSg_-hpg2uQHaFi&pid=Api&P=0&h=180',
  'https://tse1.mm.bing.net/th?id=OIP.IuiDuwoWmTUj4kIZrM4ikQHaFV&pid=Api&P=0&h=180'
];
