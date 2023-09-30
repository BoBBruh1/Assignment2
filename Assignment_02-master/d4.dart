class Pet {
  String name;
  String species;

  Pet(this.name, this.species);

  String get getName => name;

  set setName(String name) => this.name = name;

  String get getSpecies => species;

  set setSpecies(String species) => this.species = species;
}

class PetOwner {
  List<Pet> pets = [];

  void addPet(Pet pet) {
    pets.add(pet);
  }

  void listPets() {
    for (var pet in pets) {
      print('Name: ${pet.getName}, Species: ${pet.getSpecies}');
    }
  }
}

void main() {
  var pet1 = Pet('Fluffy', 'Cat');
  var pet2 = Pet('Fido', 'Dog');

  var petOwner = PetOwner();

  petOwner.addPet(pet1);
  petOwner.addPet(pet2);

  petOwner.listPets();
}