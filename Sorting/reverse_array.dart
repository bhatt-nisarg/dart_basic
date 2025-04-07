/*
Problem -> reverse all the element in the given array
time complexity O(n)
space complexity O(1)
*/
void main(){
	var list = [10,20,30,40,50,60,70,80];
	//reverseArray(list);
	/// reverse array print : 
	print(reverseArrayFunction(list));
	//print("reverseArray : ${list.map((e)=>e.toString())}");
}
/// new function for reverse array 
/// this is O(n) approach with space complexity S(n)
List<int> reverseArrayFunction(List<int> list){
	try{
		List<int> tempList = list;
		print("tempList print : ${tempList.toString()}");
		for(int i=0;i<tempList.length/2;i++){
			int tempInt = tempList[i];
			print("tempInt : ${tempInt.toString()}");
			print("${tempList.length-1-i}");
			print("tempList length : ${tempList.length}");
			print("${tempList[tempList.length-1-i]}");
			tempList[i] = tempList[tempList.length-1-i];
			print("tempList print of index $i: ${tempList[i]}");
			tempList[tempList.length-1-i] = tempInt;
			print("tempList of Index ${tempList.length-1-i}: ${tempList[tempList.length-1-i]} ");
		}
		return tempList;
	}catch(e){
	  print("Exception in reverse Array Function: ${e.toString()}");
	  throw Exception("Exception in reverse Array : ${e.toString()}");
	}
}

// below approach is not valid because it is for c++ which use call by value and call by reference
int reverseArray(List<int> temp){
	try{
		int start = 0;;
		int end = temp.length-1;
		while(start<end){
			//swap logic
			int tempVariable;
			tempVariable = temp[start];
			temp[end] = tempVariable;
			start+= 1;
			end-=1;
		}
		return 0;

	}catch(e){
		print('Exception in reverseArray : ${e.toString()}');
		throw Exception('Exception in reverseArray: ${e.toString()}');
	}
}