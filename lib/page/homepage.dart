import 'package:flutter/material.dart';
import 'package:food_delivery/components/currentlocation.dart';
import 'package:food_delivery/components/descripionbox.dart';
import 'package:food_delivery/components/drawer.dart';
import 'package:food_delivery/components/silverbar.dart';
import 'package:food_delivery/components/tapbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: HomeDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled)=>[
          Sliverbar(title: Tabbar( tabController: _tabController,),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 30,),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //my Current Location
                CurrentLocation(),
                //description box
                DescriptionBox()
              ],
            ),
          ),


        ],
        body: Container(
          child: TabBarView(
            controller: _tabController,
            children:
            [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index)=> Text('Hello'),
              ),
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index)=> Text('Chor'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

