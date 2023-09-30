
class Car {
  String make;
  String model;
  int year;

 
  Car(this.make, this.model, this.year);

 
  String get getMake => make;


  set setMake(String make) => this.make = make;


  String get getModel => model;


  set setModel(String model) => this.model = model;

  int get getYear => year;


  set setYear(int year) => this.year = year;
}


class CarDealer {
  List<Car> cars = [];

  
  void addCar(Car car) {
    cars.add(car);
  }

 
  void listCars() {
    for (var car in cars) {
      print('Make: ${car.getMake}, Model: ${car.getModel}, Year: ${car.getYear}');
    }
  }
}

void main() {
  
  var car1 = Car('Toyota', 'Camry', 2022);
  var car2 = Car('Honda', 'Civic', 2023);

 
  var carDealer = CarDealer();


  carDealer.addCar(car1);
  carDealer.addCar(car2);

  carDealer.listCars();
}