import 'package:flutter/material.dart';

class SecondBoxComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          buildListTile(image: "asset/dolar.png", text: "Assets", value: "142k"),
          Divider(
            thickness: 2,
            color: Colors.grey.shade100,
          ),
          buildListTile(image: "asset/money_bag.png", text: "Net Worth", value: "50k"),
          Divider(
            thickness: 2,
            color: Colors.grey.shade100,
          ),
          buildListTile(image: "asset/credit_card.png", text: "Debt", value: "130k"),
          // TODO create list lile method, and put them.
        ],
      ),
    );
  }

    Widget buildListTile({@required String image, @required String text = "Text", @required String value = "100k"}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Image.asset(image,),
        ),
      ),
      title: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "\$ $value",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 18,
          ),
        ],
      ),
    );
  }
}
