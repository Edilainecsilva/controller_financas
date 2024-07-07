import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adiocionar Nova Despesa'),
        backgroundColor: Colors.grey,
      ),
      endDrawer: const Drawer(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.only(left: 30),
              child: FloatingActionButton(onPressed: (){}, shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
         child: const Icon(Icons.cancel_outlined, size: 45,),)),
            SizedBox(
              width: 70,
              height: 70,
              child: FloatingActionButton(onPressed: (){},
              shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255), 
              child: const Icon(Icons.save, size: 40,),
              ),
            ),
            
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: 380,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Title', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Details', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Price', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Date', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Category', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Type', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    ),
                  ),
                ),
                //DropdownButtonFormField(items: items, onChanged: onChanged)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
