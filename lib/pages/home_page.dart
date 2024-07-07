import 'package:controller_financas/model/expenses_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas despesas'),
        backgroundColor: Colors.grey,
      ),
      endDrawer: const Drawer(),
     floatingActionButton:  SizedBox(
      width: 75,
      height: 75,
       child: FloatingActionButton(
        onPressed: (){
        }, 
        shape: const CircleBorder(side: BorderSide.none),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: const Icon(Icons.add, size: 45,
          ),
          
        ),
     ),
      body: SingleChildScrollView(
        child: Center(
          child: FutureBuilder<List<ExpensesModel>>(
            future: getItems(),
            builder: (context, snapshot) {
              return ListView.builder( 
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
                final expense = snapshot.data![index];
                return ListTile(
                  trailing: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  //color: Colors.amber,
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), // cor da sombra
                                    spreadRadius: 1, // raio de expansão da sombra
                                    blurRadius: 2, // raio de desfoque da sombra
                                    offset: const Offset(
                                        3.0, 6.0), // mudança de posição da sombra
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.home,
                                size: 45,
                              )),
                           Padding(
                            padding: EdgeInsets.only(right: 28.0),
                            child: Column(
                              children: [
                                Text(
                                  expense.title,
                                  style: TextStyle(
                                      fontSize: 34, fontWeight: FontWeight.w800),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 28.0),
                                  child: Text(
                                    expense.details,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'R\$ ${expense.price}',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text(
                                  expense.date.toString(),
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color.fromARGB(66, 104, 104, 104),
                        thickness: 2,
                        height: 40,
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
