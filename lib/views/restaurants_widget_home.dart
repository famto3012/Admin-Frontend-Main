import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RestaurantListing extends StatelessWidget {
  const RestaurantListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 4,
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: 200, child: Text('Restaurants')),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Search Records'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    border: TableBorder.all(color: Colors.blue),
                    headingRowColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      return Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.30);
                    }),
                    columns: [
                      DataColumn(label: Text('StoreId')),
                      DataColumn(label: Text('Restaurant Name')),
                      DataColumn(label: Text('Address')),
                      DataColumn(
                        label: Text('Phone'),
                      ),
                      DataColumn(label: Text('Email')),
                      DataColumn(
                        label: Text("Rating"),
                        onSort: (columnIndex, ascending) {},
                      ),
                      DataColumn(label: Text('Serviceable')),
                      DataColumn(
                        label: Text('Status'),
                      ),
                      DataColumn(label: Text('Stripe Account Status')),
                      DataColumn(label: Text('City')),
                      DataColumn(label: Text('Action')),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text("12345")),
                        DataCell(Text("Eats")),
                        DataCell(Text("abc, xyz")),
                        DataCell(Text("99999888888")),
                        DataCell(Text("santo@mail.go")),
                        DataCell(Text("NA")),
                        DataCell(Text("OPEN")),
                        DataCell(Text("Toggle Switch")),
                        DataCell(Text("-")),
                        DataCell(Text("Trivandrum")),
                        DataCell(IconButton(
                          icon: Icon(Icons.more_horiz),
                          onPressed: () {},
                        )),
                      ])
                    ]),
              ),
            )
          ],
        )));
  }
}
