import 'dart:io';

void main(){
 List<int> result =  sortedArr([-1,-1,2,3,3,3,4]);
  /// expectedOutput : 1,1,4,9,9,9,16
  print(result.toString());
}
List<int> sortedArr(List<int> array){
  // first we init some variable because 
  /*
   Description of code  :
                 start: for traversing from left
                 end  : for traversing right
                 sortedIndex : we starting sorting for end therefore we need one variable which use for monitoring 
                 one array for save result with initial all fill with zero 
  */
  int start = 0;
  int end  = array.length -1;
  int sortedIndex = array.length - 1;
  List<int> answer = List.filled(array.length, 0);
  while(end>= start){
    // loop untial end is greater then start because if this occurred our two index from left to right and right to left is crossed then we stop
    if(array[start].abs() > array[end].abs()){
      // if start abs is > end means it square is also greater then we used this
      answer[sortedIndex] = array[start] * array[start];
      start += 1;
    }else{
      //else we have end is greater then it we have to consider end index with it 
      answer[sortedIndex] = array[end] * array[end];
      end -= 1;
    }
    sortedIndex -= 1;
  }
  return answer;
}