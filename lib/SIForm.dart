import 'package:flutter/material.dart';

class SIForm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {

  var _currencies = ['Wifi', 'Lave-ligne'];
  final double  _minimumPadding = 5.0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//			resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('CoLoCo'),
      ),

      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: ListView(
          children: <Widget>[



            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Title',
                      hintText: 'Enter Title',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Adresse',
                      hintText: 'Enter Adresse',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Superficie',
                      hintText: ' ',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Price',
                      hintText: ' MAD',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Phone',
                      hintText: 'Phone number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)
                      )
                  ),
                )),

            Padding(
                padding: EdgeInsets.only(top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
                  children: <Widget>[

                    Expanded(child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Capacite',
                          hintText: ' number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    )),

                    Container(width: _minimumPadding * 5,),

                    Expanded(child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),

                      value: 'Wifi',

                      onChanged: (String newValueSelected) {
                        // Your code to execute, when a menu item is selected from dropdown
                      },

                    ))


                  ],
                )),

            Padding(
                padding: EdgeInsets.only(bottom: _minimumPadding, top: _minimumPadding),
                child: Row(children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      child: Text('Add'),
                      color: Colors.grey,
                      onPressed: () {

                      },
                    ),
                  ),


                ],)),


          ],
        ),
      ),
    );
  }


}