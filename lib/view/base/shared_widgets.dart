import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/utill/styles.dart';

class DummyList extends StatefulWidget {

  final String title;

  DummyList({required this.title});

  @override
  _DummyListState createState() {
    // TODO: implement createState
    return _DummyListState();
  }
}

class _DummyListState extends State<DummyList> {
  List stocksList = [
    CompanyStocks(name: "Dummy", price: 339.1),
    CompanyStocks(name: "Dummy 2", price: 10.34),
    CompanyStocks(name: "Dummy 3", price: 56.96),
    CompanyStocks(name: "Dummy 4", price: 32.43),
    CompanyStocks(name: "Dummy 5.", price: 77.44),
    CompanyStocks(name: "Dummy 6", price: 133.98),
    CompanyStocks(name: "Dummy 7.", price: 3505.44),
    CompanyStocks(name: "Dummy 8", price: 265.51),
    CompanyStocks(name: "Dummy 9", price: 339.1),
    CompanyStocks(name: "Dummy 10", price: 10.34),
    CompanyStocks(name: "Dummy 11", price: 56.96),
    CompanyStocks(name: "Dummy 12", price: 32.43),
    CompanyStocks(name: "Dummy 13", price: 77.44),
    CompanyStocks(name: "Dummy 14", price: 133.98),
    CompanyStocks(name: "Dummy 15", price: 3505.44),
    CompanyStocks(name: "Dummy 16", price: 265.51)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        child: ListView.builder(
          itemCount: stocksList.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(
                    stocksList[index].name,
                    style: medium.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: ColorResources.colorPrimary,
                    child: Text(
                      stocksList[index].name[0],
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Text(
                    "\$ ${stocksList[index].price}",
                    style: medium.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
}

class CompanyStocks {
  String name;
  double price;

  CompanyStocks({required this.name, required this.price});
}
