import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
          children: [
            SizedBox(
              width: width * 0.18,
            ),
            const Icon(Icons.location_on_outlined, color: Colors.black),
            const Text('House', style: TextStyle(color: Colors.black)),
          ],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_outlined, color: Colors.red),
              icon: Icon(Icons.home_outlined),
              label: ''),
          BottomNavigationBarItem(
              icon: Badge(
                  label: Text(
                    '3',
                    style: TextStyle(fontSize: 8),
                  ),
                  smallSize: 5,
                  alignment: AlignmentDirectional.topStart,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black26,
                  )),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, color: Colors.black26),
              label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 2, bottom: 14),
              child: Container(
                height: height * 0.2,
                width: width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://tse1.mm.bing.net/th?id=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&pid=Api&rs=1&c=1&qlt=95&w=195&h=121',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'History',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      const Text(
                        'View',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.red,
                      )
                    ],
                  )
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
                            2,
                            (index) => Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * 0.2,
                                        width: width * 0.28,
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
                                    Padding(
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
                                    Positioned(
                                        left: 11,
                                        bottom: 8,
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
                  top: 16, left: 16, right: 16, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Deals',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      const Text(
                        'View',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(children: [
                        ...List.generate(
                            3,
                            (index) => Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * 0.32,
                                        width: width * 0.29,
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
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * .15,
                                        width: width * 0.29,
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
                                    Positioned(
                                        top: 123,
                                        left: 16,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Nugets',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.red,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: width * 0.008,
                                                ),
                                                const Text('5.0',
                                                    style: TextStyle(
                                                        color: Colors.black26))
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            const Text('40 min',
                                                style: TextStyle(
                                                    color: Colors.black26)),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            const Text('Rs.130 Delivery',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black26)),
                                            const Text('Fee',
                                                style: TextStyle(
                                                    color: Colors.black26,
                                                    fontSize: 13))
                                          ],
                                        )),
                                    Positioned(
                                      top: 10,
                                      left: 14,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height: height * 0.023,
                                        width: width * 0.2,
                                        child: const Center(
                                          child: Text(
                                            'UP TO 30% OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 8,
                                      right: 7,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                      ]))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 7, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured',
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      const Text(
                        'View',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(children: [
                        ...List.generate(
                            3,
                            (index) => Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * 0.32,
                                        width: width * 0.29,
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
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Container(
                                        height: height * .15,
                                        width: width * 0.29,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(
                                            image2[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        top: 123,
                                        left: 16,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Nugets',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.red,
                                                  size: 13,
                                                ),
                                                SizedBox(
                                                  width: width * 0.008,
                                                ),
                                                const Text('5.0',
                                                    style: TextStyle(
                                                        color: Colors.black26))
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            const Text('40 min',
                                                style: TextStyle(
                                                    color: Colors.black26)),
                                            SizedBox(
                                              height: height * 0.008,
                                            ),
                                            const Text('Rs.130 Delivery',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black26)),
                                            const Text('Fee',
                                                style: TextStyle(
                                                    color: Colors.black26,
                                                    fontSize: 13))
                                          ],
                                        )),
                                    Positioned(
                                      top: 10,
                                      left: 14,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        height: height * 0.023,
                                        width: width * 0.2,
                                        child: const Center(
                                          child: Text(
                                            'UP TO 30% OFF',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 9),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      top: 8,
                                      right: 7,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.white,
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                      ]))),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'All Restaurants',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      'Top restaurants in your area',
                      style: TextStyle(color: Colors.black26),
                    )
                  ],
                ),
              ),
            ),
            ...List.generate(
                5,
                (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 11.0, vertical: 8),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            height: height * 0.24,
                            width: width,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Container(
                            height: height * .16,
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                image[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 130,
                          left: 16,
                          child: Text(
                            'Nuggets',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.red,
                                size: 13,
                              ),
                              SizedBox(
                                width: width * 0.008,
                              ),
                              const Text('5.0',
                                  style: TextStyle(color: Colors.black26))
                            ],
                          ),
                        ),
                        const Positioned(
                            left: 16,
                            bottom: 13,
                            child: Text('40 min',
                                style: TextStyle(color: Colors.black26))),
                        const Positioned(
                          bottom: 13,
                          left: 84,
                          child: Text('Rs.130 Delivery Fee',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26)),
                        ),
                        Positioned(
                          top: 10,
                          left: 14,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15)),
                            height: height * 0.023,
                            width: width * 0.2,
                            child: const Center(
                              child: Text(
                                'UP TO 30% OFF',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 9),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 8,
                          right: 7,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    )))
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
List image2 = [
  'https://tse1.mm.bing.net/th?id=OIP.fBe1gguUHhEyZuradl-J6QHaEX&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.6yOk5vNynX2rhAUw-YdxQQHaE7&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.eD7MpRmuCp5oKFlcdoKmuwHaE8&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.3V2fvdA6O0fSG6qGMyMeZwHaEo&pid=Api&P=0&h=180',
  'https://tse2.mm.bing.net/th?id=OIP.i5Yx6SWyxlzFSg_-hpg2uQHaFi&pid=Api&P=0&h=180',
  'https://tse1.mm.bing.net/th?id=OIP.IuiDuwoWmTUj4kIZrM4ikQHaFV&pid=Api&P=0&h=180'
];
