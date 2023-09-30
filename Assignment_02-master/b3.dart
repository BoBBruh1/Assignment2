class Clothing {
  String type;
  String size;

  Clothing(this.type, this.size);

  String get getType => type;

  set setType(String type) => this.type = type;

  String get getSize => size;

  set setSize(String size) => this.size = size;
}

class Wardrobe {
  List<Clothing> clothes = [];

  void addClothing(Clothing clothing) {
    clothes.add(clothing);
  }

  void listClothes() {
    for (var clothing in clothes) {
      print('Type: ${clothing.getType}, Size: ${clothing.getSize}');
    }
  }
}

void main() {
  var clothing1 = Clothing('T-shirt', 'M');
  var clothing2 = Clothing('Jeans', 'L');

  var wardrobe = Wardrobe();

  wardrobe.addClothing(clothing1);
  wardrobe.addClothing(clothing2);

  wardrobe.listClothes();
}