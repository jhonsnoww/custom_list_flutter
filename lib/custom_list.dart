import 'package:flutter/material.dart';
import 'package:flutter_customlist/item.dart';

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  void isHomePress(int x, List<ListItem> list) {
    setState(() {
      list[x].isHomePress = !list[x].isHomePress;
    });
  }

  List<ListItem> items = [
    ListItem('Man U', 'LiverPool', 'Uppder', 'Lower',
        isHomePress: false,
        isAwayPress: false,
        isUpPress: false,
        isLoPress: false),
    ListItem('Man City', 'Everton', 'Upper', 'Lower',
        isHomePress: false,
        isAwayPress: false,
        isUpPress: false,
        isLoPress: false),
    ListItem('Chelsea', 'Spur', 'Upper', 'Lower',
        isHomePress: false,
        isAwayPress: false,
        isUpPress: false,
        isLoPress: false),
    ListItem('Arsenal', 'Botton', 'Upper', 'Lower',
        isHomePress: false,
        isAwayPress: false,
        isUpPress: false,
        isLoPress: false),
  ];

  @override
  Widget build(BuildContext context) {
    Widget _buildRow(int x, List<ListItem> list) {
      return Card(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),

            //UpperRow
            Row(
              children: <Widget>[
                //Home
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      isHomePress(x, list);
                    },
                    child: ChoiceChip(
                      padding: EdgeInsets.zero,
                      selected: list[x].isHomePress,
                      selectedColor:
                          list[x].isHomePress ? Colors.red : Colors.blue,
                      label: GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          trailing: list[x].isHomePress
                              ? Chip(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  label: Text('10'),
                                  backgroundColor: Colors.blue,
                                )
                              : Chip(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  label: Text('20'),
                                  backgroundColor: Colors.blue,
                                ),
                          contentPadding: EdgeInsets.zero,
                          onTap: () {
                            isHomePress(x, list);
                          },
                          title: Text(
                            list[x].home,
                            maxLines: 1,
                          ),
                          isThreeLine: false,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                //Away
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //isPress(x, list, list[x].isAwayPress);
                    },
                    child: ChoiceChip(
                      selected: list[x].isAwayPress,
                      selectedColor:
                          list[x].isAwayPress ? Colors.red : Colors.blue,
                      label: FlatButton(
                        padding: EdgeInsets.all(2),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0),
                          onTap: () {
                            //  isPress(x, list, list[x].isAwayPress);
                          },
                          title: Text(
                            list[x].away,
                            maxLines: 1,
                          ),
                          trailing: Chip(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            label: Text('12'),
                            backgroundColor: Colors.blue,
                          ),
                          isThreeLine: false,
                        ),
                        color: Colors.transparent,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            //LowerRow
            Row(
              children: <Widget>[
                //Upper in LowerRow
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      // isPress(x, list, list[x].isUpPress);
                    },
                    child: ChoiceChip(
                      selected: list[x].isUpPress,
                      selectedColor:
                          list[x].isUpPress ? Colors.red : Colors.blue,
                      label: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () {
                          //isPress(x, list, list[x].isUpPress);
                        },
                        title: Text(
                          'Upper',
                          maxLines: 1,
                        ),
                        trailing: Chip(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          label: Text('12'),
                          backgroundColor: Colors.blue,
                        ),
                        isThreeLine: false,
                      ),
                    ),
                  ),
                ),
                //Lower in LowerRow
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      //isPress(x, list, list[x].isLoPress);
                    },
                    child: ChoiceChip(
                      selected: list[x].isLoPress,
                      selectedColor:
                          list[x].isLoPress ? Colors.red : Colors.blue,
                      label: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        onTap: () {
                          setState(() {
                            // isPress(x, list, list[x].isLoPress);
                          });
                        },
                        title: Text(
                          "Lower",
                          maxLines: 1,
                        ),
                        trailing: Chip(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          label: Text('12'),
                          backgroundColor: Colors.blue,
                        ),
                        isThreeLine: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Custom List'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: Container(child: _buildRow(index, items)),
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.black12,
        ),
      ),
    );
  }
}
