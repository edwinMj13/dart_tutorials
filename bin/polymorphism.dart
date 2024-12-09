void main(){
  Vehicle vehicle = Vehicle();
  vehicle.namedParameter(name: "Edwin");
  vehicle.namedParameter(name: "Edwin",company: "Infosys",position: "Developer");
  vehicle.namedParameter(name: "Edwin",company: "Infosys");
}

class Vehicle{

  void start([int speed = 0,int weight = 0,String startingPoint = ""]){
    print("Speed - $speed");
    print("weight - $weight lbs");
    print("startingPoint - $startingPoint");
  }
  void namedParameter({String? name,String? position,String? company}){
    print("name - $name");
    print("position - $position");
    print("company - $company");
  }
}