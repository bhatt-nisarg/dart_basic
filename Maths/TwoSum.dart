
// function for checking two sum : 
bool twoSum(List<int> nums,int target){
  try{
      // input : 1,2,3,4  and expected output: isTrue
      Map<int,int> seen = {};
      for(int index = 0;index<nums.length;++index){
        int number = nums[index];
        int complement = target - number;
        if(seen.containsKey(complement)){
          return true;
        }else{
          seen[number] = index;
        }
      }
      return false;
  }catch(e){
    print("Exception in two sum ${e.toString()}");
    throw Exception("Exception in twoSum: ${e.toString()}");
  }
}

void main(){
  bool result = twoSum([1,2,3,4], 7);
  print(result);
}