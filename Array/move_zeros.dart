void main(){
    List<int> arr = moveZero([1,0,3,0,2,0,4,5,6,4]);
    print("our result List : ${arr.toString()}");
}

/**
this is work like we iterate in array and then if from starting 
if we have current iteration element is not zero then we move this element in
last non zero element which we stored in array and after all non zero elements iteration 
then we fill remaining from last non zero index to length of list with 0
this is O(N) approach
**/
List<int> moveZero(List<int> list){
  int lastNonZeroIndex = 0;
  print("inside moveZeroFunction : ${list.toString()}");
  if(list.isNotEmpty){
    print("inside list is not empty : ");
      //iterate in our list
      for(int i=0;i<list.length;++i){
          if(list[i]!=0){
            // if list[i] is not 0 then to transfer it to last index where element is not 0
            list[lastNonZeroIndex] = list[i];
            // then increase our lstnonzeroIndex number
            lastNonZeroIndex += 1;
          }
      }
      // fill remaining with 0
      for(int i=lastNonZeroIndex;i<list.length;++i){
        list[i] = 0;
      }
      return list;
  }else{
    return [];
  }
}