import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:music_mobile_app/constants/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(leading: const BackButton(color: Colors.blueAccent,),
        backgroundColor: Colors.transparent,
        elevation: 0,),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/detail.png'),
              fit: BoxFit.cover)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/sleep.png'),
                        const Text('Mood',style: TextStyle(fontSize: 13,color: Colors.white),),
                        const Text('Lighthearted',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
                        )
                        
                      ],
                    ),
                    const Text('     '),
                    Column(
                      children: [
                        Image.asset('assets/images/dreams.png'),
                        const Text('Dreams',style: TextStyle(fontSize: 13,color: Colors.white),),
                        const Text('Daydreams',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
      ),
    );
  }
}