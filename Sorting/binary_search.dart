// Binary search : search use in sorted array 
/*
Efficient search algorithm to find the index of element in a given sorted array
lexicographicsorted order

time complexity : O(log n)
it is -> fast & efficient
	 -> search space should be sorted order or we can say that search space is monotonic means either increasing or
	 	decreasing order
monotonic : -> non-increasing or non decreasing order
*/

void main(){
	final list = [10,11,12,13,14,15,16,17,18,19,20];
	print("find element at index : ${binarySearch(list,13)}");
}
int binarySearch(List<int> temp,int key){
	try{
		int start = 0;
		int end = temp.length-1;
		while(start<=end){
			int mid = ((start+end) ~/ 2);
			if(temp[mid] == key){
				// if it is same then return mid
				return mid;
			}else if(temp[mid] > key){
				end = mid-1;
			}else{
				start = mid+1;
			}
		}
		return -1; // means element is not found
		}catch(e){
			print("Exception in binarySearch : ${e.toString()}");
			throw Exception("Exception in binary search : ${e.toString()}");
		}
}