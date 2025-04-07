// Linear search : searching in array 
/*
Linear search : Searching algorithm to find the index of element in a given array
*/
void main(){
	final tempList = [10,25,12,24,35,45,64,100];
	print(LinearSeacrh(tempList,25));
}
int LinearSeacrh(List<int> temp,int key){
	try{
		print("inside linear search function :");
		for(var item in temp){
			if(item == key){
			return  temp.indexOf(item);
			}	
		}
		// if key not found then return -1
		return -1;

	}catch(e){
		print("Exception in linear search : ${e.toString()}");
		throw Exception("Exception in linear search : ${e.toString()}");
	}
}