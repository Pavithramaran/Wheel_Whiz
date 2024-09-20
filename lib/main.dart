import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LogoPage(),
      debugShowCheckedModeBanner: false,// Start with the logo page
    );
  }
}

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // After a delay, navigate to the LoginPage
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/title.jpg', // Path to your logo
          width: double.infinity, // Set width to cover the full screen
          height: double.infinity, // Set height to cover the full screen
          fit: BoxFit.cover, // Ensures the image covers the entire screen
        ),
      ),
    );
  }
}

// Login Page
// Login Page
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          SizedBox.expand(
            child: Image.asset(
              'assets/BG.jpg', // Path to your background image
              fit: BoxFit.cover, // Ensures the image covers the entire background
            ),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                   // fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    //fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: const Text('Home Page'),
      //),
      body: Stack(
        children: <Widget>[
          // Background image
          SizedBox.expand(
            child: Image.asset(
              'assets/BG.jpg', // Path to your background image
              fit: BoxFit.cover, // Ensures the image covers the entire background
            ),
          ),
          // Foreground content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //const FlutterLogo(size: 100),
                //const SizedBox(height: 50),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WheelchairPage()),
                    );
                  },
                  icon: const Icon(Icons.accessible),
                  label: const Text('Wheelchair'),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LavatoryPage()),
                    );
                  },
                  icon: const Icon(Icons.wc),
                  label: const Text('Lavatory'),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HelpPage()),
                    );
                  },
                  icon: const Icon(Icons.help),
                  label: const Text('Help'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class WheelchairPage extends StatelessWidget {
  const WheelchairPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Wheelchair'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.store),
                      title: const Text('Wheelchair Shops'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WheelchairShopPage()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.build),
                      title: const Text('Wheelchair Service Shops'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const WheelchairMechanicShopPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Apply similar changes to the other pages
class WheelchairShopPage extends StatelessWidget {
  const WheelchairShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Wheelchair Shops'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('Easy Wheels'),
                      subtitle: Text('123 Mobility St, 555-9871'),
                    ),
                    ListTile(
                      title: Text('Wheelchair World'),
                      subtitle: Text('456 Freedom Ave, 555-1237'),
                    ),
                    ListTile(
                      title: Text('Roll Easy'),
                      subtitle: Text('789 Comfort Blvd, 555-4562'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WheelchairMechanicShopPage extends StatelessWidget {
  const WheelchairMechanicShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Wheelchair Mechanic Shops'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('WheelFix'),
                      subtitle: Text('111 Repair Rd, 555-6789'),
                    ),
                    ListTile(
                      title: Text('MobiCare'),
                      subtitle: Text('222 Service St, 555-9870'),
                    ),
                    ListTile(
                      title: Text('QuickFix Mobility'),
                      subtitle: Text('333 FixIt Ln, 555-5432'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LavatoryPage extends StatelessWidget {
  const LavatoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Lavatory locations'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('Central Park Lavatory'),
                      subtitle: Text('Near Central Park, 555-1122'),
                    ),
                    ListTile(
                      title: Text('Downtown Lavatory'),
                      subtitle: Text('Downtown Plaza, 555-3344'),
                    ),
                    ListTile(
                      title: Text('Mall Lavatory'),
                      subtitle: Text('Inside Mega Mall, 555-5566'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Help'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.local_hospital),
                      title: const Text('Hospitals'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HospitalPage()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.local_pharmacy),
                      title: const Text('Medical Shops'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MedicalShopPage()),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.restaurant),
                      title: const Text('Restaurants'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RestaurantPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Hospitals'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('City Hospital'),
                      subtitle: Text('123 Main St, 555-1234'),
                    ),
                    ListTile(
                      title: Text('General Hospital'),
                      subtitle: Text('456 Broadway, 555-5678'),
                    ),
                    ListTile(
                      title: Text('Mediclinic'),
                      subtitle: Text('789 Elm St, 555-9876'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MedicalShopPage extends StatelessWidget {
  const MedicalShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Medical Shops'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('Health Pharmacy'),
                      subtitle: Text('111 Pine St, 555-4321'),
                    ),
                    ListTile(
                      title: Text('Care Chemists'),
                      subtitle: Text('222 Oak St, 555-8765'),
                    ),
                    ListTile(
                      title: Text('MediMart'),
                      subtitle: Text('333 Maple St, 555-6789'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/BG.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              AppBar(
                title: const Text('Restaurants'),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              Expanded(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text('Gourmet Bistro'),
                      subtitle: Text('321 Willow St, 555-3456'),
                    ),
                    ListTile(
                      title: Text('Cafe Delight'),
                      subtitle: Text('654 Cedar St, 555-7890'),
                    ),
                    ListTile(
                      title: Text('Dine Fine'),
                      subtitle: Text('987 Spruce St, 555-2345'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
