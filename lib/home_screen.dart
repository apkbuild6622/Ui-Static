import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uipractice/widgets/item_banner.dart';
import 'package:uipractice/widgets/item_category.dart';
import 'package:uipractice/widgets/item_product.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> banners = ['banner.jpg', 'banner1.jpg', 'banner2.jpg'];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset("assets/images/logo.png"),
        ),
        title: Text('E-Commerce World',
          style: TextStyle(
              color: Colors.green,
              fontWeight: .bold,
              fontSize: 22
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Badge(
              label: Text('10'),
              child: Icon(CupertinoIcons.bell,size: 30,),

            ),
          )
        ],
      ),
      body: ListView(
        children: [
          //search
          Card(
            margin: EdgeInsets.all(15),
            child: TextField(

              decoration: InputDecoration(
                hintText: "search",
                hintStyle: TextStyle(fontWeight: .w300),
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                border: InputBorder.none,

              ),

            ),
          ),
          //banners
          SizedBox(
            height: 150,
            child: PageView(
              onPageChanged: (value){
                setState(() {
                  currentIndex= value;
                });
              },
              children: [
                for (String banner in banners)
                  ItemBanner(image: banner),

              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                for(int index=0; index < banners.length; index++)
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                     height: currentIndex==index?12: 7, width: currentIndex==index?12: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:currentIndex==index? Colors.grey.shade800: Colors.grey,
                  ),
                ),

              ],
            ),
          ),

          //Categories
          ListTile(
            title: Text('Categories'),
            trailing: Text('Show All',
              style: TextStyle(fontSize: 14,
                  color: Colors.indigo,
                  fontWeight: .bold
              ),
            ) ,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               ItemCategory(title: 'Beauty', image: 'skin-care.png', color: Colors.orange),
                ItemCategory(title: 'Baby', image: 'baby.png', color: Colors.purple),
                ItemCategory(title: 'Electronics', image: 'responsive.png', color: Colors.green),
                ItemCategory(title: 'Kitchen', image: 'spoon-and-fork.png', color: Colors.blue),
                ItemCategory(title: 'Medical', image: 'hospital.png', color: Colors.yellow),
                ItemCategory(title: 'Beauty', image: 'tshirt.png', color: Colors.pink),

              ],
            ),
          ),
          //products
          ListTile(
            title: Text('Products'),
            trailing: Text('Show All',
              style: TextStyle(fontSize: 14,
                  color: Colors.indigo,
                  fontWeight: .bold
              ),
            ) ,
          ),
          GridView.count(
            padding: EdgeInsets.all(5),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            childAspectRatio: 0.90,
            children: [
              ItemProduct(
                  title: 'Best Products in pakistan',
                  image: 'headphones5.jpg',
                  price: "3500"
              ),

              ItemProduct(
                  title: 'Heart Beat Check Machine',
                  image: 'Tablet showing heart test result.jpg',
                  price: "35000"
              ),

              ItemProduct(
                  title: 'Best Playing Products',
                  image: 'sports.png',
                  price: "5500"
              ),

              ItemProduct(
                  title: 'Iphone 18 Pro Max',
                  image: 'iphone.png',
                  price: "716500"
              ),

              ItemProduct(
                  title: 'Best Products in pakistan',
                  image: 'headphones5.jpg',
                  price: "3500"
              ),

              ItemProduct(
                  title: 'Heart Beat Check Machine',
                  image: 'Tablet showing heart test result.jpg',
                  price: "35000"
              ),

              ItemProduct(
                  title: 'Best Playing Products',
                  image: 'sports.png',
                  price: "5500"
              ),

              ItemProduct(
                  title: 'Iphone 18 Pro Max',
                  image: 'iphone.png',
                  price: "716500"
              ),
            ],
          ),

        ],
      ),
    );
  }
}
