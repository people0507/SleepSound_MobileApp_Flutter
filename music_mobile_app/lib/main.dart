import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:music_mobile_app/constants/colors.dart';
import 'package:music_mobile_app/models/start_screen.dart';
import 'package:music_mobile_app/pages/bottom_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 


  double currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    initialization();
  }
 void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  SafeArea(
      child: Scaffold(
        backgroundColor: ColorPalette.backgroundColor,
        body: Column(
          children: [
            SizedBox(
              width: 500,
              height: 600,
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    width: 400,
                    height: 500,
                    child: PageView.builder(
                      itemCount: 3,
                      controller: pageController,
                      itemBuilder:(context, index) {
                        return Column(
                          children: [
                            Image.asset(startscreenList[index].images),
                              SizedBox(
                                width: 350,
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    children: [
                                      Text(startscreenList[index].titles,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 34,
                                        fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,),
                                        const Spacer(),
                                      Text(startscreenList[index].descriptions,style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        ),
                                        textAlign: TextAlign.center,),
                                    ],
                                  ),
                                ),
                              ),
                              
                          ],
                        );
                      },)
                  ),
                  
              ]),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:30),
              child: SmoothPageIndicator(
                controller: pageController, 
                count: 3,
                effect: const ScrollingDotsEffect(
                  activeDotColor: ColorPalette.dotColor,
                  dotHeight: 8,
                  dotWidth: 8),),
            ),
            TextButton(
              style:ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(ColorPalette.buttonColor),
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 20,horizontal: 150)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)))
              ) ,
            onPressed: (){
              setState(() {
                if(currentIndex < 2) {
                  currentIndex = (currentIndex + 1);
                  pageController.nextPage(
                    duration: const Duration(microseconds: 1000), 
                    curve: Curves.bounceInOut);
                  print(currentIndex);
                } else{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyBottomNavigation()));
                }
              });
            },
              child: const Text('Next',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google_icon.png'),
                    const Text('   '),
                    const Text('Login with Google',
                    style: TextStyle(fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),)
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
