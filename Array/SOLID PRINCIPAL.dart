/*SOLID PRINCIPAL

s : Single Responsibility
O : Open Close Principle 
L : Liskov's substitution Principle
I : Interface Segregation
D : Dependency Inversion:

one of the most common software development Pattern 
thus every one has clear understanding of SOLID in software engineering

we can consider in object-oriented language like dart
for the help of like this patterns our code will be easier and more readable as a result


Introduced by Robert C.Martin in 2000 known as uncle bob

*/

// S : The Single Responsibility Principle(SRP)
/*
This stands for the idea that every class in your code should have only one job or responsibility - it should do one thing and do it well.


: Simple Explain : 
***************************************
In Other words rather than creating a single class that attempts to handle multiple tasks, its better to break down the tasks into seperate classes,each responsible for a specific job.
this makes your code easier to understand, maintain, and modify because each class has a clear and focused purpose.

each class have only single job Role
in dart if we use single screen and that have different widgets like progressbar widget failed widget and success widget like wise
***************************************
*/

/*
O :  The Open-Closed Principle(OCP)
: this principle says that every class and method should be open for extensiob, but closed for modification


in Other words 
**********************************************
you should be able to add new functionality in a class without altering existing code. This principle promotes code stability and reduce the risk of introducing bugs when making changes.
-------------------------------------------
*/


//Before apply Open closed principle
//class VehicleMileageCal{
//	void showMielage(dynamic anyVehicle){
//		if( anyVehicle is Bike){
//			print("${anyVehicle.getBikeMileage()}");
//		}else if(anyVehicle is Car){
//			print("${anyVehicle.getCarMileage()}");
//		}
//	}
//}
//class Bike{
//	String getBikeMileage() => "45 km/l";
//}
//class Car{
//	String  getCarMileage() => "14 km/l";
//}
// here we used vehicle for get mileage function call but when we have to add new mileage of other vehicle like tampo then we not going to change main class vehicle 
// after applied open closed principle 
******
//abstract class Vehicle {
//	String getMileage();
//}
//class Bike extends Vehicle{
//	String getMileage() => "45 km/l";
//}
//class Car extends Vehicle{
//	String getMilegage() => "14 km/l";
//}
//class VehicleMileageCal {
//	void showMielage(Vehicle vehicle){
//		print(vehicle.getMileage());
//	}
//}


//void main(){
//	VehicleMileageCal mileage = new VehicleMileageCal();
//	VehicleMileageCal.showMielage(Car());
//}
******

/*
L : The Liskov Substitution Principle(LSP)
: The principle suggests that object of subclass(Eden) should be able to replace objects of the superclass(sam)without altering program's behavior.
******************************************
According LSP : subclasses should be replaced with superclasses without changing the logical correctness of th program.
Essentially a subtype must guarantee that "usage conditions" of its super-type
along with some additional behaviors
*******************************************
*****Before applied LSP 
*/
void main(){
	StatelessWidget adapter = StatelessWidget();
	adapter.select(RadioButtonWidget());
}
//class StatelessWidget {
//	void select(ClickListener clickListener){
//		if(clickListener is ListItemWidget){
//			clickListener.changeBackground();
//		}else if(clickListener is RadioButtonWidget){
//			clickListener.check();
//		}
//		clickListener.onClick(1);
//	}
//}
//mixin ClickListener{
//	void onClick(int position);
//}
//class ListItemWidget implements ClickListener{
//	@override
//	void onClick(int position){
//		print("Clicked list item : $position");
//	}
//	void changeTheBackground(){
//		print("Change the background color of the item View");
//	}
//}
//class RadioButtonWidget implements ClickListener{
//	@override
//	void onClick(int position){
//		print("Clicked radio button $position");
//	}
//	void check(){
//		print("Enable the radio button");
//	}
//}
//*** after appling LSP
//class StatelessWidget {
//	void select(ClickListener clickListener){
//		clickListener.onClick(1);
//	}
//}

//mixin ClickListener {
//	void onClick(int position);
//}
//class ListItemWidget implements ClickListener{
//	@override
//	void onClick(int position){
//		print("Clicked list item $position");
//		_changeTheBackground();
//	}
//	void _changeTheBackground(){
//		print("Change the background color of the item view");
//	}
//}
//class RadioButtonWidget implements ClickListener{
//	@override
//	void onClick(int position){
//		print("Clicked radio button $position");
//		_check();
//	}
//	void _check(){
//		print("Enable the radio button");
//	}
//}

*********************
I : The Interface segregation principle(ISP)
/*
simple : we don't want to force our clients to use an interface that contains functions or methods that don't use easily enough.
// we cant force to implement the functionaliy if that part doesn't containt it
Like Plan 
We have two plan one is our 
Real Plane and othe is paper plane
now when 
our interface contains one methods like start engine but in Real plan have engine but paper plane doesn't have then why we force paper plane to implement it

// not all classes have to perform all methods which describe in interface


**************
class will only implement what they actually need.

// according to this principle clients 
don't need to implement behaviors they don't want.
 as a general rule you should create small interface with few methods.


 */
 // Incorrect attemp at a universal interface
 //abstract class AllPurposeRobot{
 //	void paint();
 //	void clean();
 //}
 //// Incorrect attempt to make painter Robot implement AllPurposeRobot
 //class PainterRobot implements AllPurposeRobot{
 //	@override
 //	void paint(){
 //		print("Painter robot is creating artwork");
 //	}
 //	@override
 //	void clean(){
 //		//Incorrect which violates ISP
 //		print("Painete robot is attempting to clean which is not its expertise.");

 //	}
 //}

 // After appling ISP
// abstract class PaintingRobot{
// 	void paint();
// }
// abstract class CleanRobot{
// 	void clean();
// }

// // Painter Robot only implements Painting Robot
// class PainterRobot implments PaintingRobot{
// 	@override
// 	void pain(){
// 		print("Painter Robot is creating artwork. ");
// 	}
// }
////cleaner robot only implements cleaningRobots
//class CleanRobot implments CleaningRobot{
//	@override
//	void clean(){
//		// Implementation of cleaning logic
//		print("Cleaner Robot is cleaning surfaces. ");
//	}
//}

//*******************************
//D : The Dependency Inversion Principle(DIP)
//:
//** which states that hight level modules must not depent on low level modules without an abstraction.
//in software design relying on abstractions rather than specific details helps create systems that are easier to maintain and adapt over time

//General Deffinition: 
// according to dip : 
// abstractions should be preferred over implementations. 
// its good to extend abstract classes or implement interface but to descend
//  from concreate classes.its already clear why when we look at the open closed principle.

// Example :
*** before applying DIP  
//class RepositoryImpl {
//	List<FeedItem> getDataFromApi(){
//		//Make your API call
//	}
//	List<FeedItem> getDataFromCache(){
//		// Query the databas for the data
//	}
//}
*** after applying DIP 
class RepositoryImpl{
	RemoteDataSource remoteDataSource;
	LocalDataSource localDataSource;
	RepositoryImpl(this.remoteDataSource,this.localDataSource);
}
abstract class RemoteDataSource{
	List<FeedItem> getDataFromApi();
}
abstract class LocalDataSource{
	List<FeedItem> getDataFromCache();
}
class RemoteDataSourceImpl extends RemoteDataSource{
	// Consider this class as having access to an HTTP Client
	List<FeedItem> getDataFromApi(){
		// Api Call 
	}
} 
class LocalDataSourceImpl extends LocalDataSource{
	List<FeedItem> getDataFromCache(){
		// Query the database for the data
	}
}