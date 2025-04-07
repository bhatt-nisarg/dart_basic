// searching in array
/*
Linear search : searching algorithm in O(n) 
*/
int linearSearrch(List<int> arr,int key){
  try{
    for(int i=0;i< arr.length;i++){
          if(arr[i] == key){
            return i;
          }
          
    }
    return -1;
  }catch(e){
    throw Exception("Exceptionin in leanear seach : ${e.toString()}");
  }
}
/*
Binary search : search use in sorted array
onlyl applicable if list is sorted
it is in lexicographicsorted order
time Complexity : O(log n)
it is -> fast & efficient
      -> search space should be monotonic means sorted like increasing or decreasing order 
*/
int binarySearch(List<int> arr,int key){
  try{
    // take two variables :  start and end 
    int start = 0;
    int end = arr.length-1;
    /// while start and end index not crossed we have to work with loop
    while(start<=end){
      int mid = (start+end)~/2;
      print("mid pring ${mid}");
      if(arr[mid] == key){
        return mid;
      }
      else if(arr[mid] > key){
        end = mid-1;
      }
      else{
        start = mid+1;
      }

    }
    return -1; // no key found

  }catch(e){
    throw Exception("Exception in binary search : ${e.toString()}");
  }
}
void main(){
  print(linearSearrch([1,2,3,54,3,2,43,6], 54));
   print(binarySearch([1,2,3,54,3,2,43,6], 54));
}