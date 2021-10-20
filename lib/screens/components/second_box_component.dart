import 'package:flutter/material.dart';

class SecondBoxComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 250,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey),
                        ],
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(),
                            title: Text(
                              "Assets",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "\$ 142k",
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
                          ),
                          Divider(
                            thickness: 2,
                            color: Colors.grey.shade100,
                          ),
                          // TODO create list lile method, and put them.
                        ],
                      ),
                    );
  }
}