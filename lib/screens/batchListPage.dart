import 'package:flutter/material.dart';

class BatchListPage extends StatelessWidget {
  const BatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(), // Adds the border
              labelText: 'Batch Name', // Optional label text
              hintText: 'Search Batch Name', // Optional hint text
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 237, 230, 230)),
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Batch Name",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Subject",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text("4 Students"),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
