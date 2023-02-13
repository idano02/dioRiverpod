import 'package:activelamp/provider/shortlinkprovider.dart';
import 'package:activelamp/services/apiService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    final shortD = ref.watch(shortLinker);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
          
            TextFormField(
              controller: shortD.inputLonglinkDick,
              decoration: InputDecoration(
                hintText: "Paste long url link"
              ),
            ),
             SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: shortD.aliasnameunique,
              decoration: InputDecoration(
                hintText: "Put an alias for the link"
              ),
            ),
           
             SizedBox(
              height: 55,
            ),
            Text(shortD.currentgeneratdLink),
            SizedBox(
              height: 55,
            ),
            SizedBox(
              width: 290,
              height: 40,
              child: ElevatedButton(
                onPressed: (){
                  shortD.generateShortDickLink();
                }, 
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
                shape: ContinuousRectangleBorder(
                  borderRadius: 
                  BorderRadius.circular(20),
                )
              ),
              child: Center(
                child: Text("Generate Short Link"),
              ),),
            ),
            SizedBox(
              height: 55,
            ),
            SizedBox(
              width: 290,
              height: 40,
              child: ElevatedButton(
                onPressed: (){
                  shortD.launchInBrowser();
                }, 
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
                shape: ContinuousRectangleBorder(
                  borderRadius: 
                  BorderRadius.circular(20),
                )
              ),
              child: Center(
                child: Text("Go to the link"),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
