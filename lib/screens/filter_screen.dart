import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key key}) : super(key: key);

  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactose = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filter'),
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Adjust your meal selection.',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              _buildSwitchListTile(
                'Gluten-free',
                'Only include gluten-free meals',
                _glutenFree,
                (value) {
                  setState(() {
                    _glutenFree = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegetarian',
                'Only include vegetarian meals',
                _vegetarian,
                (value) {
                  setState(() {
                    _vegetarian = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegan',
                'Only include vegan meals',
                _vegan,
                (value) {
                  setState(() {
                    _vegan = value;
                  });
                },
              ),
              _buildSwitchListTile(
                'Lactose-free',
                'Only include lactose-free meals',
                _lactose,
                (value) {
                  setState(() {
                    _lactose = value;
                  });
                },
              ),
            ],
          ),
        )
      ]),
    );
  }

  SwitchListTile _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(description),
      value: currentValue,
      onChanged: updateValue,
    );
  }
}
