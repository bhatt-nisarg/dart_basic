// two sum code
/**
take one list of nums 
and target sum that which we have to achive this sum
we iterate in our list and 
and check if our current list item store in variable 
and then define targe - current item is equal complement
then we made one map of int we can store via condition
if current item complement means difference is available in our seen map then we return true that can be done
other else we store current in our map
general scenario
**/
bool twoSum(List<int> nums,int target){
	try{
		Map<int,int> seen = {};
		for(int index=0;index< nums.length;++index){
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
			print("Exception in two Sum : ${e.toString()}");
			return false;
	}
}

// two sum with return index that which index sum is this 
List<int> twoSumWithIndex(List<int> nums,int target){
	try{
		    Map<int,int> seenMap = <int,int>{};
		    // initialize first value as default
		    seenMap[nums[0]] = 0;
    List<int> ourList = [];
    for(int current=0;current<nums.length;current++){
          print("current number : ${nums[current].toString()}");
        final currentValue = nums[current];
       
        
       	print("current seen map value: ${seenMap.toString()}");
        final complement = target - currentValue;
        print("complement : ${complement}");
        if(seenMap.containsKey(complement) && seenMap[complement]! != current){
        	print("inside contains key : ${seenMap}");
        	ourList.add(seenMap[complement]!);
            ourList.add(current);
        }
         else{
        seenMap[currentValue] = current;  
         }
    }
    return ourList;
	}catch(e){
		print("inside catch block : ${e.toString()}");
		return [];
	}
}
void main(){
	//print(twoSum([1,2,3,4],7));
	print(twoSumWithIndex([1,2,3,4],7));
	print(twoSumWithIndex([3,2,4],6));
	print(twoSumWithIndex([3,3],6));
	//print(twoSum([1,2,3,4],12));

}