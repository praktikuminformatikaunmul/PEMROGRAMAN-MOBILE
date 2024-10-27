import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pertemuan_3/pages/login_page.dart';
import 'package:pertemuan_3/theme/theme.dart';
import 'package:pertemuan_3/pages/profile.dart';
import 'package:pertemuan_3/widget/categories.dart';
import 'package:pertemuan_3/widget/doctor_list_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double getResponsiveSize(double size) {
    double screenWidth = MediaQuery.of(context).size.width;
    return size * (screenWidth / 375);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Hello, John Doe",
              style: TextStyle(
                fontSize: getResponsiveSize(25), // Responsive font size
                color: AppTheme.buttonTextColor,
              ),
            ),
            Container(
              width: getResponsiveSize(48),
              height: getResponsiveSize(47),
              margin: const EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage("assets/dandadan.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyProfile()),
                );
              },
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Kuuhaku",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                accountEmail: Text(
                  "Manikfilip03@gmail.com",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("assets/dandadan.jpeg"),
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.search,
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Cari',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: getResponsiveSize(170), // Responsive height
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: getResponsiveSize(110), // Responsive width
                  height: getResponsiveSize(170), // Responsive height
                  margin: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/dokter.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: getResponsiveSize(165), // Responsive width
                  height: getResponsiveSize(170), // Responsive height
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        "How do you feel?",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          fontSize:
                              getResponsiveSize(17), // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Fill out your medical\ncard right now",
                          style: GoogleFonts.poppins(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                            fontSize:
                                getResponsiveSize(11), // Responsive font size
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("You're, ready!"),
                              duration: Duration(seconds: 5),
                            ),
                          );
                        },
                        child: Container(
                          width: getResponsiveSize(165), // Responsive width
                          height: getResponsiveSize(40), // Responsive height
                          margin: const EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: GoogleFonts.poppins(
                                color: AppTheme.buttonTextColor,
                                fontSize: getResponsiveSize(
                                    13), // Responsive font size
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: getResponsiveSize(70), // Responsive height
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.search,
                    size: 40, color: AppTheme.buttonTextColor),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "How can we help you?",
                    style: GoogleFonts.poppins(
                      color: AppTheme.buttonTextColor,
                      fontSize: getResponsiveSize(15), // Responsive font size
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                      fontSize: getResponsiveSize(20), // Responsive font size
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Text(
                    'see All',
                    style: GoogleFonts.poppins(
                      fontSize: getResponsiveSize(12), // Responsive font size
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: getResponsiveSize(85), // Responsive height
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Categories(
                    onTap: () {},
                    kategori: 'Dentist',
                    icon: FontAwesomeIcons.tooth,
                  );
                },
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Doctor list',
                  style: GoogleFonts.poppins(
                    fontSize: getResponsiveSize(20), // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text(
                  'see All',
                  style: GoogleFonts.poppins(
                    fontSize: getResponsiveSize(12), // Responsive font size
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: getResponsiveSize(400), // Responsive height
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return DoctorListCard(
                  onTap: () {},
                  imagePath: 'assets/dokter_cowo.jpeg',
                  name: 'Joko Tingkir',
                  rating: 3.5,
                  address: 'Mulawarman',
                  age: 20,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
