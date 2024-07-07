import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total de despesas'),
        backgroundColor: Colors.grey,
      ),
      endDrawer: const Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 370,
            child: Column(
              children: [
                Container(
                      width: 90,
                      height: 90,
                      color: Colors.amber,
                       child: const Column(
                      
                      ),
                    ),
                    
                Text('Cartões'),
                Divider(),
                Text('Dinheiro'),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      color: Colors.amber,
                       child: const Column(
                        children: [
                          Text('R\$ 4555,00'),
                          Text('Total Received'),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      color: Colors.amber,
                      child: const Column(
                        children: [
                          Text('R\$ 4555,00'),
                          Text('Total Spent'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}