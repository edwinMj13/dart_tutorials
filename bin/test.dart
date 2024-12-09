class Student {
  final String name;
  final int age;
  final String address;

  const Student(this.name, this.age, this.address);

  const Student.edwin()
      : name = "edwin",
        age = 23,
        address = "dfdfdc";

  const Student.bar(this.name)
      : age = 89,
        address = "address3";

  const Student.others({String? name,int? age}) : name = name ?? "edwin OTHER",age =age ?? 100,address ="wefsfsdfsdf";
}

void main() {
  const student = Student("qw", 12, "4fdfbdfb");
  print(student.address);
  print(student.name);
  print(student.age);

  print("\n");

  const edwin = Student.edwin();
  print(edwin.address);
  print(edwin.name);
  print(edwin.age);
  print("\n");
  const edwin2 = Student.bar("EDWIN BABY");
  print(edwin2.address);
  print(edwin2.name);
  print(edwin2.age);
  print("\n");
  const edwinOther = Student.others(name: "John");
  print(edwinOther.name);
  print(edwinOther.age);
  print(edwinOther.address);

}
