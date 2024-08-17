import 'package:flutter/material.dart';
import 'package:task/homepage/public_feed/public_feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          // Row with two images (logo and notification)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('images/logo.png'),
                    const SizedBox(width: 10), // Add some space between images
                    Image.asset('images/tickmark.png'),
                  ],
                ),
                Image.asset('images/notification.png'),
              ],
            ),
          ),

          // Customized TabBar
          Container(
            color: Colors.white, // Set the background color of the TabBar container
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.green, // Set the indicator (underline) color to green
              labelColor: Colors.green, // Set the selected tab text color to green
              unselectedLabelColor: Colors.black, // Set the unselected tab text color
              indicatorWeight: 3.0, // Increase the thickness of the indicator line
              indicatorSize: TabBarIndicatorSize.tab, // Extend the indicator to the full width of the tab
              tabs: const [
                Tab(text: 'Public Feed'),
                Tab(text: 'Business Feed'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Public Feed Tab Content
                PublicFeed(),
                // Business Feed Tab Content
                Center(
                  child: Text('Business Feed Content'),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white
            ,
            icon: Icon(Icons.home
            ,color: Colors.green),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.green),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box,color: Colors.green),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.green),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.green),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
