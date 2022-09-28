import 'package:coffe/componants/coffee_type.dart';
import 'package:coffe/componants/coffees.dart';
import 'package:coffe/componants/componants.dart';
import 'package:flutter/material.dart';

class CoffeeScreen extends  StatefulWidget {
  const CoffeeScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  var searchController=TextEditingController();
  final List coffeeType=[
    ['Cappuccino' , true],
    ['Latte' , false],
    ['Black' , false],
    ['Tea' , false],
  ];
  void coffeeTypeSelected( int index )
  {
    setState(() {
      for(int i=0 ; i<coffeeType.length ; i++)
        {
          coffeeType[i][1]=false;
        }
      coffeeType[index][1]=true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.person
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: '',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children:
          [
            const Text(
              "Find The best coffee for you",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            defaultTextForm(
              controller: searchController,
              type: TextInputType.text,
              validate: (){},
              prefix: Icons.search,
              hint: 'Find your coffee',
              radius: 10,
              colorBorder: Colors.grey.shade600,
              colorIcons: Colors.orange,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                  itemBuilder: (context,index)=>
                      CoffeeType(
                          coffeeType: coffeeType[index][0],
                          isSelected: coffeeType[index][1],
                          onTap: (){
                            coffeeTypeSelected(index);
                          },
                      ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  Coffees(
                    coffeeImagePath: 'assets/images/patrick-slade-IsGgL-LfHh0-unsplash.jpg',
                    coffeeName: 'Cappuccino',
                    coffeePrice: '20',
                  ),
                  Coffees(
                    coffeeImagePath: 'assets/images/nathan-dumlao-XOhI_kW_TaM-unsplash (1).jpg',
                    coffeeName: 'Latte',
                    coffeePrice: '20',
                  ),
                  Coffees(
                    coffeeImagePath: 'assets/images/co.jpg',
                    coffeeName: 'Black',
                    coffeePrice: '20',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
