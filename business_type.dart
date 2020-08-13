import 'package:flutter/material.dart';

class ConstructionSector extends StatefulWidget {
  @override
  _DropdownSectors createState() {
    return _DropdownSectors();
  }
}

class _DropdownSectors extends State<ConstructionSector> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Text('Industrial'),
            value: 'industrial66',
          ),
          DropdownMenuItem<String>(
            child: Text('Commercial'),
            value: 'commercial',
          ),
          DropdownMenuItem<String>(
            child: Text('Institutional'),
            value: 'institutional',
          ),
          DropdownMenuItem<String>(
            child: Text('Facility Management'),
            value: 'facilitymanagement',
          ),
          DropdownMenuItem<String>(
            child: Text('Residential'),
            value: 'residential',
          ),
          DropdownMenuItem<String>(
            child: Text('General Contracting'),
            value: 'generalcontracting',
          ),
          DropdownMenuItem<String>(
            child: Text('Project Management'),
            value: 'projectmanagement',
          ),
          DropdownMenuItem<String>(
            child: Text('Design Build'),
            value: 'designbuild',
          ),
          DropdownMenuItem<String>(
            child: Text('Other'),
            value: 'other',
          ),

        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },

        hint: Text('Business Type'),
        value: _value,
      ),

    );

  }
}