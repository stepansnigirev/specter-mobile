import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:specter_mobile/app/modules/wallets/walletInfoTransaction/views/wallet_info_transactions_view.dart';

class WalletInfoTransactionsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: openItem,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.85),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: getContent()
        )
    );
  }

  Widget getContent() {
    return Row(
        children: [
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: getTopPanel()
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5),
                      child: getBottomPanel()
                  )
                ]
            ),
          ),
          Container(
              child: getRightArrow()
          )
        ]
    );
  }

  Widget getTopPanel() {
    TextStyle style = TextStyle(color: Colors.white);
    return Row(
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Text('Yesterday, 11:00:00', style: style)
            )
          ),
          Container(
              child: Text('0 BTC', style: style)
          )
        ]
    );
  }

  Widget getBottomPanel() {
    TextStyle style = TextStyle(color: Colors.white.withOpacity(0.5));
    return Container(
        child: Text('From exchange abcd ...', style: style)
    );
  }

  Widget getRightArrow() {
    return Container(
        margin: EdgeInsets.only(left: 10),
        child: Icon(CupertinoIcons.right_chevron)
    );
  }

  void openItem() {
    Get.to(WalletInfoTransactionView(), arguments: {
    });
  }
}