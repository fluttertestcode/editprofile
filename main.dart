import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

import 'business_type.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Test App'),
          centerTitle: true,
          backgroundColor: Colors.grey
      ),
      body: Center(
        child: new HomePage(title: 'Edit Profile'),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {
        print("Enabled");
      };
    }

    return new Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.arrow_left),
        actions: <Widget>
        [
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Save"),
            shape: CircleBorder(side: BorderSide(color: Colors.black)),
          ),

        ],
        title: new Text(widget.title),
        centerTitle:true,

      ),

      body: new SafeArea(
          top: false,
          bottom: false,
          child: new Form(
              key: _formKey,
              autovalidate: true,
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[

              new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: new TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                          hintText: 'Enter your first name',
                          labelText: 'First Name',
                        )
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  new Flexible(
                    child: new TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                          hintText: 'Enter your last name',
                          labelText: 'Last Name',
                        )
                    ),
                  ),
                  SizedBox(width: 20.0,),

                ],
              ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Flexible(
                        child: new TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Enter company name',
                              labelText: 'Company Name',
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),

                        new ConstructionSector(),
                     SizedBox(width: 20.0,),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Flexible(
                        child: new TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Enter your email address',
                              labelText: 'Email',
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      new Flexible(
                        child: new TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'EEnter your phone numbe',
                              labelText: 'Phone number',
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),
                    ],
                  ),
                new TextFormField(
                    textAlign: TextAlign.left,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: 'Enter Address',
                      labelText: 'Address Line',

                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Flexible(
                        child: new TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Enter City',
                              labelText: 'City',
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),

                      new Flexible(
                        child: new TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: 'Enter State/Province',
                              labelText: 'State/Province',
                            )
                        ),
                      ),
                      SizedBox(width: 20.0,),
                    ],
                  ),
                  new TextFormField(
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                      hintText: 'Enter Zip/Postal Code',
                      labelText: 'Zip/Postal Code',
                    ),
                  ),
                  new CountryListPick(
                    //labelText: 'Country',
                    isShowFlag: true,
                    isShowTitle: true,
                    isShowCode: false,
                    isDownIcon: true,
                    initialSelection: '+31',
                    showEnglishName: true,
                    onChanged: (CountryCode code) {
                      print(code.name);
                      print(code.code);
                      print(code.dialCode);
                      print(code.flagUri);
                      if (code.name == "Canada") {
                        print("O Canada!");
                        setState(() {
                          _enabled=true;
                        });
                      }
                      else {
                        setState(() {
                          _enabled=false;
                        });
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: FlatButton(
                      child: Text('Change Password ?'),
                      color: Colors.yellow[600],
                      textColor: Colors.black,
                      onPressed: _onPressed,

                    ),
                  ),
                ],

              ))),

    );
  }
}


