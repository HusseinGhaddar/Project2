class Item {
  final String _title;
  final double _price;
  final String _desc;
  final String _image;

  Item(this._title, this._price, this._desc, this._image);

  String get title {
    return _title;
  }

  String get image {
    return _image;
  }

  double get price {
    return _price;
  }

  String get desc {
    return _desc;
  }

  @override
  String toString() {
    return "$_title \nPrice: $_price\$ \n$_desc";
  }
}
