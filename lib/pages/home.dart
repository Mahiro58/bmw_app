import 'package:carapp/adds/gradient.dart';
import 'package:carapp/pages/add_car.dart';
import 'package:carapp/pages/add_servis.dart';
import 'package:carapp/pages/demo.dart';
import 'package:carapp/pages/help.dart';
import 'package:carapp/pages/map.dart';
import 'package:carapp/pages/servis_historia.dart';
import 'package:carapp/pages/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      backgroundColor: const Color(0xff1c1c1c),
      drawer: drawer(),
      body: ListView(
        children: [
          welcome(),
          Center(child: buttons(context)),
          const SizedBox(height: 40,),
          servis(context),
          const SizedBox(height: 40,),
          help(context)
        ],
      ),
      bottomNavigationBar: bottomnavigation(context),
    );
  }

  Container bottomnavigation(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.white,
            width: 2,
          )
        )
      ),
      child: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600
        ),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        iconSize: 20,
        backgroundColor: const Color(0xff1c1c1c),
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Column help(BuildContext context) {
    return Column(
          children: [
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff1c1c1c),
              minimumSize: const Size(350, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2
                )
              )
            ),
            onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const HelpPage()),
              );
            }, 
            child: const Text(
              "POMOC",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
            )
            )
          ],
      );
  }

  Column servis(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "SERWIS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1c1c1c),
                  minimumSize: const Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>const AddServis()),
                  );
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      ),
                    SizedBox(width: 10,),
                    Text(
                      'Dodaj nowy wpis',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1c1c1c),
                  minimumSize: const Size(200, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
                ),
                onPressed: (){
                    Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context)=>const ServisHistory()),
                  );
                }, 
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.book,
                      color: Colors.white,
                      ),
                    SizedBox(width: 10,),
                    Text(
                      'Historia',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                )
              ),
            ),
          ],
        );
  }

  Column buttons(BuildContext context) {
    return Column(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(350, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const AddCar()),
                );
              }, 
              child: const Text(
                "DODAJ SWOJE BMW",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff1c1c1c),
                minimumSize: const Size(350, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2
                  )
                )
              ),
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const DemoPage()),
                );
              }, 
              child: const Text(
                "ODKRYJ POJAZDY DEMO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              )
            )
          ],
        );
  }

  Container welcome() {
    return Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
            gradient: gradient
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "WELCOME IN BMW APP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Dodaj swoje BMW lub poznaj zalety aplikacji dzięki naszym pojazdom DEMO.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset(
                    'assets/icons/bmw_cars.png',
                    width: 400,
                    height: 200,
                    fit: BoxFit.contain,
                  )
                ),
              ),
            ],
          ),
        );
  }

  Drawer drawer() {
    return Drawer(
    backgroundColor: Colors.blueGrey,
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const DrawerHeader(
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            gradient: graDrawer,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MY GARAGE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.directions_car,
            color: Colors.white,
          ),
          title: const Text(
            'Prace w toku...',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
          onTap: () {
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.directions_car,
            color: Colors.white,
          ),
          title: const Text(
            'Prace w toku...',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
          onTap: () {
          },
        ),
      ],
    ),
  );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff294962),
      centerTitle: true,
      title: const Text(
        '',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            padding: const EdgeInsets.only(left:0),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }, 
            icon: const Icon(
              Icons.directions_car,
              color: Colors.white,
              size: 25,
              )
          );
        }
      ),
      actions: [
        IconButton(
          padding: const EdgeInsets.only(right: 0),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context)=>const ServisHistory())
            );
          }, 
          icon: const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 25,
          )
        )
      ],
    );
  }
}