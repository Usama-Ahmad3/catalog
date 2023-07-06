import 'package:catalog/view/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'groceryDetailScreen.dart';

class GroceryMainScreen extends StatefulWidget {
  Color color;
  Color color2;
  Color color3;
  GroceryMainScreen(
      {Key? key,
      required this.color,
      required this.color2,
      required this.color3})
      : super(key: key);

  @override
  State<GroceryMainScreen> createState() => _GroceryMainScreenState();
}

class _GroceryMainScreenState extends State<GroceryMainScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:
              const Icon(Icons.delivery_dining_outlined, color: Colors.black),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.location_on_outlined, color: Colors.black),
              Text('Address', style: TextStyle(color: Colors.black)),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black)
            ],
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 14.0),
              child: Center(
                child: FaIcon(FontAwesomeIcons.flagUsa, color: Colors.blue),
              ),
            )
          ],
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home_outlined, color: Colors.white),
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
                      color: Colors.white30,
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined, color: Colors.white30),
                label: ''),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 5, bottom: 14),
                  child: Container(
                    height: height * 0.23,
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
                const Positioned(
                  left: 40,
                  top: 30,
                  child: Text(
                    'Product in promotion',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                const Positioned(
                  top: 55,
                  left: 40,
                  child: Text(
                    'Description',
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
                Positioned(
                    left: 40,
                    bottom: 33,
                    child: Container(
                      height: height * 0.046,
                      width: width * 0.26,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Add to basket',
                        style: TextStyle(
                            fontSize: 13, color: Colors.deepOrangeAccent),
                      )),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: Column(children: [
                    InkWell(
                      onTap: () {
                        widget.color = Colors.red;
                        widget.color2 = Colors.black26;
                        widget.color3 = Colors.black26;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ));
                        setState(() {});
                      },
                      child: Icon(
                        Icons.fastfood,
                        color: widget.color,
                      ),
                    ),
                    const Text(
                      'Food',
                      style: TextStyle(color: Colors.black26),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26.0),
                  child: Column(children: [
                    Icon(
                      Icons.shopping_cart_checkout_outlined,
                      color: widget.color2,
                    ),
                    const Text(
                      'Grocery',
                      style: TextStyle(color: Colors.black26),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(children: [
                    Icon(
                      Icons.hdr_plus,
                      color: widget.color3,
                    ),
                    const Text(
                      'Pharma',
                      style: TextStyle(color: Colors.black26),
                    )
                  ]),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: SizedBox(
                    height: height * 0.052,
                    width: width * 0.8,
                    child: TextFormField(
                      cursorColor: Colors.black26,
                      style: const TextStyle(color: Colors.black26),
                      scrollPhysics: const AlwaysScrollableScrollPhysics(),
                      decoration: InputDecoration(
                          hintText: 'Search Food..',
                          hintStyle: const TextStyle(
                              fontSize: 19, color: Colors.black26),
                          disabledBorder: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.search,
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
                ),
                SizedBox(
                  width: width * 0.018,
                ),
                Container(
                  height: height * 0.045,
                  width: width * 0.1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.red),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.exchange,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.0),
                child: Row(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 3.5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GroceryDetailScreen(),
                                    ));
                              },
                              child: Container(
                                  height: height * 0.13,
                                  width: width * 0.39,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.network(
                                        image2[index],
                                        fit: BoxFit.fill,
                                      ))),
                            ),
                          ),
                          const Positioned(
                              right: 15,
                              top: 10,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 20,
                              )),
                          const Positioned(
                            bottom: 15,
                            left: 13,
                            child: Text(
                              'Sabor Gubano da lily',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 8, top: 13, bottom: 8),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Nearest',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 3.5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GroceryDetailScreen(),
                                    ));
                              },
                              child: Container(
                                height: height * 0.13,
                                width: width * 0.39,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      image[index],
                                      fit: BoxFit.fill,
                                    )),
                              ),
                            ),
                          ),
                          const Positioned(
                              right: 15,
                              top: 10,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 20,
                              )),
                          const Positioned(
                            bottom: 15,
                            left: 13,
                            child: Text(
                              'Sabor Gubano da lily',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Healthy',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ...List.generate(
                      10,
                      (index) => Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 3.5),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GroceryDetailScreen()));
                              },
                              child: Container(
                                height: height * 0.13,
                                width: width * 0.39,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    image2[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                              right: 15,
                              top: 10,
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 20,
                              )),
                          const Positioned(
                            bottom: 15,
                            left: 13,
                            child: Text(
                              'Sabor Gubano da lily',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
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
  'https://tse1.mm.bing.net/th?id=OIP.IWhoRMtgIFOK-zQvXeLnhgHaHa&pid=Api&P=0&h=180',
  'https://tse1.mm.bing.net/th?id=OIP.g9KFgkhTjABGKvQPZ8qN-AHaE8&pid=Api&P=0&h=180',
  'https://tse1.mm.bing.net/th?id=OIP.dy3e-IUh_XgTTvBx21eCGwHaEc&pid=Api&P=0&h=180',
  'https://tse2.mm.bing.net/th?id=OIP.R8xJYTM_aLIL2bFgEhhMrgHaE8&pid=Api&P=0&h=180',
  'https://tse2.mm.bing.net/th?id=OIP.YON0LjjWoQmO6RfKcSmPnAHaFj&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.FWbRfWkEwjSBPNbXVie36AHaE7&pid=Api&P=0&h=180',
  'https://tse2.mm.bing.net/th?id=OIP.N6P2_eCI88_sRu18mX2TEQHaE8&pid=Api&P=0&h=180',
  'https://tse4.mm.bing.net/th?id=OIP.IRKzGp_MN1OSY366FzeF_wHaD_&pid=Api&P=0&h=180',
  'https://tse3.mm.bing.net/th?id=OIP.xMYbPUpaNgEU9BqStwSw_QHaFj&pid=Api&P=0&h=180',
  'https://tse3.mm.bing.net/th?id=OIP.6fv8BkaiiKfBwHXLurhxBwHaE4&pid=Api&P=0&h=180'
];
