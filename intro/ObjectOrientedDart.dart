//1 : Encaptulation: 
//it is the bundling of data and methods that operate on the data with in single unit 
//known as class. it hides the internal state of an object from the outside world,this
//only exposing necessary functionalities through well defined interfaces.
//in dart we can use
//public , private , protected access modifiers
void main(){
	// incaptulation
	var account = BankAccount();
	account.deposit(1000);
	print("Current balance: ${account.getBalance()}");
	account.withdraw(500);
	print("Remaining balance: ${account.getBalance}");
	// inheritance
	var dog = Dog();
	dog.speak();

	//PolyMorphism
	Shape circle = Circle();
	Shape rectangle = Rectangle();
	circle.draw();
	rectangle.draw();

	var cat = Dog();
	dog.speak();
}
class BankAccount {
	// private
	double _balance = 0;

	void deposit(double amount){
		_balance += amount;
	}
	void withdraw(double amount){
		if(_balance >= amount){
			_balance -= amount;
		}else{
			print("Insuffucient funds.");
		}
	}
	double getBalance(){
		return _balance;
	}
}

2. Inheritance : Inheritance is a mechanism that allows a class(subclass) to inherit 
properties and methods from another class(superclass). 
This promotes code reuse and establishes a hierarchical relationship between classes.remoteDataSource

class Animal{
	void speak(){
		print("Animal speaks.");
	}
}
class Dog extends Animal{
	@override
	void speak(){
		print("Dog barks");
	}
}


3: Polymorphism : its allows objects of different classes to be treated as objects of a common superclass.
this enables flexibility and extensibility in code

class Shape{
	void draw(){
		print("Drawing shape");
	}
}
class Circle extends Shape{
	@override
	void draw(){
		print("Drawing a circle. ");
	}
}
class Rectangle extends Shape {
	@override
	void draw(){
		print("Drawing a rectangle ");
	}
}

**** Abstraction : 
Abstraction is the process of 
hiding complex implementation 
details and showing only the 
essential features of an object.
 it helps in reducing complexity 
 and managing large codebases 
 effectively.

abstract class Animal {
	void speak();
}
class Dog extends Animal{
	@override
	void speak(){
		print("Dog barks");
	}
}


// Method overriding and overloading
Method overriding
: when subclass provides a specific implementation of a method that is already defined in its superclass it allows
 subclasses to tailor the behavior of inherited methods to suit their specific needs.
class Animal {
	void speak(){
		print("Animal Speaks.");
	}
}
class Dog extends Animal{
	@override
	void speak(){
		print('Dog barks');
	}
}
// here if dog.speak() called then // dog barks print 
because of overriding

*** Method overloading :
ability to define multiple methods with the same name but with different parameters.Dart does not support method overloading
directly, but you can achieve similar functionality using optional parameters or named parameters

class Calculator{
	int add(int a,int b){
		return a+b;
	}
	double add(double a,double b){
		return a+b;
	}
}

Inheritance : it is a mechanism in which a new class(subclass) is created from an existing class(superclass),
inheriting its properties and methods. this promotes code reuse and establishes a hierarchical relation ship between classes.

1 : single inheritance : 
class Animal{
	void eat(){
		print("Animal is eating ");
	}
}
class Dog extends Animal {
	void bark(){
		print("dog is barking .");
	}
}

2 : multilevel : its involves chain of inheritance where a subclass becomes a superclass for another class.
its establishes hierarchical relation ship with multiple level of inheritance.
class Animal{
	void eat(){
		print("Animal is eating");
	}
}
class Dog extends Animal{
	void bar(){
		print("Dog is barking");
	}
}
class Labrador extends Dog{
	void swim(){
		print("labrador is swiming");
	}
}

3 : hierarchical : multiple subclasses inherit from single super class 
each sub class shares common characteristics from the superclass but may have its own specialized behavior.

class Animal{
	void eat(){
		print("Animal is eating.");
	}
}
class Dog extends Animal{
	void bark(){
		print("Dog is barking.");
	}
}
class Cat extends Animal{
	void meow(){
		print("Cat is meowing");
	}
}

// Factorial : 
int factorial(int n){
	if(n==0 || n==1){
		return 1;
	}else{
		return n* factorial(n-1);
	}
}

int fibonacci(int n){
	if(n<=1){
		return n;
	}else{
		return fibonacci(n-1) + fibonacci(n-2);
	}
}

int binarySearch(List<int> list,int target){
	int left =0;
	int right = list.length-1;
	while(left <= right){
		int mid = left + (right - left) ~/ 2;
		if(list[mid] == target){
			return mid;
		}else if(list[mid] < target){
			left = mid+1;
		}else {
			right = mid-1;
		}
	}
	return -1;
}

bool isPrime(int n){
	if(n<=1){
		return false;
	}
	for(int i=2 ; i*i <= n;i++){
		if(n % i == 0){
			return false; // its not prime
		}
	}
	return true; // its non prime
}


lifeCycle: statefulWidget:
createState -> initState -> didChangeDependencies -> build -> deactivate -> dispose

stateless widget is like single block
only one stage build()

widgets are the building blocs of flutter app's user interface
each widget is immutable declaration of part of the user interface
widgets are used to describe all aspects of a user interface.



Provider is used for simple state management in simple applications general
Bloc is another popular statemanagement designed for more complex applications