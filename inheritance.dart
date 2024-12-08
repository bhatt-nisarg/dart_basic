/// inheritance allows the extension of classes
/// Example : Class person,class student 
///     : Student class inherits all functionalies from the person claas.
///   : Student class can have own methods and attributes
/// mixin : possibility of multiple inheritance 
///  use of defined functionalities in addition to inheritance
void main(){
  Student s1  = Student();
  s1.setSemester = 2;
  s1._age = 22;
  s1.setAge = "Bhatt";
  Person p1 = Person();
  p1._age = 20;
  p1.setName = 'Nisarg';

  int semetser = s1.getSemester;
  print("semester from student object : ${semetser}");

}

class Person{
    late String _name;
    late int _age;

//getter method
    String get getNaem => this._name;
    int get getAge => this._age;

// setter method
    set setName(String) => this._name;
    set setAge(int) => this._age;
  void run(){
    print('$_name runs!');
  }    
}

class Student extends Person{
  late int semester;
  int get getSemester => this.semester;
  set setSemester(int) => this.semester;

  void party(){
    print("$_name is on a party");
  }
}