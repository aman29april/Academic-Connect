import 'package:acadamicConnect/Components/BookGridViewCard.dart';
import 'package:acadamicConnect/Components/TopBar.dart';
import 'package:acadamicConnect/Models/E-Book.dart';
import 'package:acadamicConnect/Utility/Resources.dart';
import 'package:acadamicConnect/Utility/constants.dart';
import 'package:acadamicConnect/pages/Dashboard/E_Book/EbookInfo.dart';
import 'package:flutter/material.dart';

class EBookSelect extends StatelessWidget {
  const EBookSelect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        child: kBackBtn,
        onPressed: () {
          kbackBtn(context);
        },
        title: string.e_book,
      ),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 9 / 13,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        itemCount: ebooks.length,
        itemBuilder: (context, index) => BookGridViewCard(
              eBook: ebooks[index],
              onTap: () {
                kopenPageBottom(
                  context,
                  EBookInfo(
                    eBook: ebooks[index],
                  ),
                );
              },
            ),
      ),
    );
  }
}