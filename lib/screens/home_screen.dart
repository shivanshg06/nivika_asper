import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nivika_asper/constants/colour_codes.dart';
import 'package:nivika_asper/widgets/reusableWidgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);
  final UserModel userModel;
  final User firebaseUser;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Handicrafts & Misc.',
                  style: TextStyle(
                    fontSize: 15,
                    color: accentColour2,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Food n\' Snacks',
                  style: TextStyle(
                    fontSize: 18,
                    color: accentColour2,
                  ),
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: TabBarView(
          children: [
            HandicraftsHomeScreen(
              firebaseUser: widget.firebaseUser,
              userModel: widget.userModel,
            ),
            FoodSnacksHomeScreen(),
          ],
        ),
      ),
    );
  }
}

class HandicraftsHomeScreen extends StatefulWidget {
  const HandicraftsHomeScreen(
      {Key? key, required this.userModel, required this.firebaseUser})
      : super(key: key);
  final UserModel userModel;
  final User firebaseUser;

  @override
  State<HandicraftsHomeScreen> createState() => _HandicraftsHomeScreenState();
}

class _HandicraftsHomeScreenState extends State<HandicraftsHomeScreen> {
  final carImages = [
    Card(
      child: Image(
        image: AssetImage('images/handicraft_car1.png'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('images/handicraft_car2.png'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('images/handicraft_car3.png'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('images/handicraft_car4.png'),
        fit: BoxFit.cover,
      ),
    ),
    Card(
      child: Image(
        image: AssetImage('images/handicraft_car5.png'),
        fit: BoxFit.cover,
      ),
    ),
  ];
  final List<ListTile> items = [
    ReusableListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage('images/handicraft_jute_bag.png'),
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Jute Bags',
            style: TextStyle(fontSize: 20, color: accentColour),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description: ',
              style: TextStyle(fontSize: 18, color: accentColour2),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet fringilla lorem id venenatis. Curabitur at gravida dolor, ut consectetur nibh. Aliquam nec lacus tincidunt, lobortis velit non, blandit nisi. Suspendisse ut hendrerit odio. Maecenas eu ex eu quam pharetra rutrum eget id nunc. Mauris fermentum augue sed eros iaculis cursus. Nam sit amet ultrices libero. Suspendisse nec lobortis metus. Integer congue nibh faucibus dui dapibus ultrices. Curabitur tellus massa, volutpat quis ante sed, pellentesque congue risus. Mauris neque justo, imperdiet sed tempus in, fringilla in turpis.'),
          ],
        ),
      ),
    ),
    ReusableListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage('images/handicraft_jute_basket.png'),
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Jute Basket',
            style: TextStyle(fontSize: 20, color: accentColour),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description: ',
              style: TextStyle(fontSize: 18, color: accentColour2),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet fringilla lorem id venenatis. Curabitur at gravida dolor, ut consectetur nibh. Aliquam nec lacus tincidunt, lobortis velit non, blandit nisi. Suspendisse ut hendrerit odio. Maecenas eu ex eu quam pharetra rutrum eget id nunc. Mauris fermentum augue sed eros iaculis cursus. Nam sit amet ultrices libero. Suspendisse nec lobortis metus. Integer congue nibh faucibus dui dapibus ultrices. Curabitur tellus massa, volutpat quis ante sed, pellentesque congue risus. Mauris neque justo, imperdiet sed tempus in, fringilla in turpis.'),
          ],
        ),
      ),
    ),
    ReusableListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage('images/handicraft_pooja_thhali.png'),
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Embroidered \nPooja \nThhali',
            style: TextStyle(fontSize: 20, color: accentColour),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description: ',
              style: TextStyle(fontSize: 18, color: accentColour2),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet fringilla lorem id venenatis. Curabitur at gravida dolor, ut consectetur nibh. Aliquam nec lacus tincidunt, lobortis velit non, blandit nisi. Suspendisse ut hendrerit odio. Maecenas eu ex eu quam pharetra rutrum eget id nunc. Mauris fermentum augue sed eros iaculis cursus. Nam sit amet ultrices libero. Suspendisse nec lobortis metus. Integer congue nibh faucibus dui dapibus ultrices. Curabitur tellus massa, volutpat quis ante sed, pellentesque congue risus. Mauris neque justo, imperdiet sed tempus in, fringilla in turpis.'),
          ],
        ),
      ),
    ),
    ReusableListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage('images/handicraft_wood_work.png'),
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Wooden \nShowpieces',
            style: TextStyle(fontSize: 20, color: accentColour),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description: ',
              style: TextStyle(fontSize: 18, color: accentColour2),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet fringilla lorem id venenatis. Curabitur at gravida dolor, ut consectetur nibh. Aliquam nec lacus tincidunt, lobortis velit non, blandit nisi. Suspendisse ut hendrerit odio. Maecenas eu ex eu quam pharetra rutrum eget id nunc. Mauris fermentum augue sed eros iaculis cursus. Nam sit amet ultrices libero. Suspendisse nec lobortis metus. Integer congue nibh faucibus dui dapibus ultrices. Curabitur tellus massa, volutpat quis ante sed, pellentesque congue risus. Mauris neque justo, imperdiet sed tempus in, fringilla in turpis.'),
          ],
        ),
      ),
    ),
    ReusableListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage('images/handicraft_vase.jpg'),
            width: 75,
            height: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Attractive Flower \nVase',
            style: TextStyle(fontSize: 20, color: accentColour),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Description: ',
              style: TextStyle(fontSize: 18, color: accentColour2),
            ),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus laoreet fringilla lorem id venenatis. Curabitur at gravida dolor, ut consectetur nibh. Aliquam nec lacus tincidunt, lobortis velit non, blandit nisi. Suspendisse ut hendrerit odio. Maecenas eu ex eu quam pharetra rutrum eget id nunc. Mauris fermentum augue sed eros iaculis cursus. Nam sit amet ultrices libero. Suspendisse nec lobortis metus. Integer congue nibh faucibus dui dapibus ultrices. Curabitur tellus massa, volutpat quis ante sed, pellentesque congue risus. Mauris neque justo, imperdiet sed tempus in, fringilla in turpis.'),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.05,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, ',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                widget.userModel.fullName!.toUpperCase(),
                style: TextStyle(
                  color: secondaryColour,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: secondaryColour,
              ),
              Container(
                child: Text(
                  'See what\'s trending',
                  style: TextStyle(
                    fontSize: 22,
                    color: accentColour2,
                  ),
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 175,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                ),
                itemCount: carImages.length,
                itemBuilder: (context, index, realIndex) {
                  final carouselImg = carImages[index];
                  return buildImage(carouselImg, index);
                },
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Card(
              //         child: Image(
              //           image: AssetImage('images/handicraft_car1.png'),
              //           height: 200,
              //           width: 200,
              //         ),
              //       ),
              //       Card(
              //         child: Image(
              //           image: AssetImage('images/handicraft_car2.png'),
              //           height: 200,
              //           width: 200,
              //         ),
              //       ),
              //       Card(
              //         child: Image(
              //           image: AssetImage('images/handicraft_car3.png'),
              //           height: 150,
              //           width: 300,
              //         ),
              //       ),
              //       Card(
              //         child: Image(
              //           image: AssetImage('images/handicraft_car4.png'),
              //           height: 200,
              //           width: 200,
              //         ),
              //       ),
              //       Card(
              //         child: Image(
              //           image: AssetImage('images/handicraft_car5.png'),
              //           height: 200,
              //           width: 200,
              //         ),
              //       ),
              //     ],
              //   ), //Carousel
              // ),
              Container(
                child: Text(
                  'Our Top Picks!',
                  style: TextStyle(
                    fontSize: 22,
                    color: accentColour2,
                  ),
                ),
              ),
              Container(
                child: ExpansionPanelList.radio(
                  children: items
                      .map((item) => ExpansionPanelRadio(
                            value: item,
                            headerBuilder: (context, isExpanded) => Card(
                              child: ReusableListTile(
                                title: item.title,
                                onTap: () {},
                              ),
                            ),
                            body: Container(
                              child: item.trailing,
                            ),
                          ))
                      .toList(),
                ),
              ),
              Container(
                child: Text(
                  'Other items...',
                  style: TextStyle(
                    fontSize: 22,
                    color: accentColour2,
                  ),
                ),
              ),
              Card(
                child: ReusableListTile(
                  title: Text('Item 1'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ReusableListTile(
                  title: Text('Item 1'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ReusableListTile(
                  title: Text('Item 1'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ReusableListTile(
                  title: Text('Item 1'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodSnacksHomeScreen extends StatefulWidget {
  const FoodSnacksHomeScreen({Key? key}) : super(key: key);

  @override
  State<FoodSnacksHomeScreen> createState() => _FoodSnacksHomeScreenState();
}

class _FoodSnacksHomeScreenState extends State<FoodSnacksHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Coming soon...!',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

Widget buildImage(Card carouselImg, int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: carouselImg,
  );
}
