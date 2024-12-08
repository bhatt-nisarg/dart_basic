/*
Find pivot index : 
Given an array of integers nums, calculate the pivot index of ther array 

###=>> Pivot Index : pivot index is the index where the sum of all numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right
if the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. this also applies to the right of the array

Return the left most pivot index. if no such index exists, return -1.

Example : 
input:  nums = [1,7,3,6,5,6]
output:  3 

Info : the pivot index is 3. 
left sum =  nums[0] + nums[1] + nums[2]
         = 1 + 7 + 3
         = 11
right sum = num[4] + num[5] 
          = 5 + 6
          = 11      

------------------------------
Input: nums = [1,2,3]
Output: -1
Explanation:
There is no index that satisfies the conditions in the problem statement.      
---------------------------------
Input: nums = [2,1,-1]
Output: 0
Explanation:
The pivot index is 0.
Left sum = 0 (no elements to the left of index 0)
Right sum = nums[1] + nums[2] = 1 + -1 = 0

Constraints
1 <= nums.length <= 104
-1000 <= nums[i] <= 1000
*/
void main(){
  int index = pivotIndex([1,7,3,6,5,6]);
  print("pivot index : ${index}");
}

// operation function 
int pivotIndex(List<int> list){
  int leftSum = 0;
  int total = sum(list);
  for(int i=0;i<list.length;i++){
    if(leftSum == total-leftSum-list[i]){
      return i;
    }
    leftSum += list[i];
  }
  return -1;
}

// helper function
int sum(List<int> numbers){
  int sum  = 0;
  for(int num in numbers){
    sum += num;
  }
  return sum;
}