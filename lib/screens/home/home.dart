import 'package:flutter/material.dart';
import 'package:magazine_luiza/screens/home/item_contents/item_params.dart';
import 'package:magazine_luiza/screens/home/item_contents/item_params_filled.dart';
import 'package:magazine_luiza/screens/home/text_style.dart';

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
                          style: HomeTextStyles.anuncio,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            item.descricao,
                            style: HomeTextStyles.descricao,
                          ),
                        ),
                        Text(
                          item.preco,
                          style: HomeTextStyles.preco,
                        ),
                        Text(
                          item.parcela,
                          style: HomeTextStyles.parcela,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite_border,
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
