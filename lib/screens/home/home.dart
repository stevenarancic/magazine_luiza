import 'package:flutter/material.dart';
import 'package:magazine_luiza/screens/home/item_params.dart';
import 'package:magazine_luiza/screens/home/item_params_filled.dart';
import 'package:magazine_luiza/screens/home/widgets/item_name.dart';
import 'package:magazine_luiza/screens/home/widgets/price_tag.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: Text("Ofertas do dia"),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            ItemParams item = item_params_filled.elementAt(index);

            return ListTile(
              title: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(item.foto),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.anuncio,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            item.descricao,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Text(
                          item.preco,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          item.parcela,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                color: Colors.pink,
                onPressed: () {},
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemCount: 7),
    );
  }
}
