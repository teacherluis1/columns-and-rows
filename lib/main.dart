import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          
          title: const Text('Examples, columns and rows'),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home, size: 30, color: Colors.blue),
                  Text("Inicio", style: TextStyle(fontSize: 20)),
                  Icon(Icons.star, size: 30.0, color: Colors.amber),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.person, size: 30.0, color: Colors.green),
                  Text("Perfil",style: TextStyle(fontSize: 20)),
                  Icon(Icons.settings, size: 30.0, color: Colors.red),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){},
                       child: const Text("Button 1"),
                       ),
                       ),

                       const SizedBox(width: 10),
                       Expanded(
                        child: ElevatedButton(
                          onPressed: (){},
                           child: const Text("Button 2"),
                         ),
                      ),
                    ],
              ),
          

            ],
          ),
        ),
      ),
    );
  }
}