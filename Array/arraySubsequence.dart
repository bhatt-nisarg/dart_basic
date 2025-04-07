// we have to match two array for subsequence one is main array and 
//second is our subsequence we have to compare our subsequence with 
//main array

bool checkSubSequence(List<int> mainArr,List<int> sequence){
    try{
        // this is because our main array is empty
        if(mainArr.isEmpty){
            return false;
        }
        // sequence is empty
        if(sequence.isEmpty){
            // we haven't sequence for main array
            return true;
        }
        // take twwo index : first for sequence and second for main array
        // initial index with 0
        int mainArrayIndex = 0;
        int sequenceArrayIndex = 0;
        while(sequenceArrayIndex < sequence.length && mainArrayIndex < mainArr.length){
            // condition is for sequence index is < sequence array length and main array index is less then main array length  untill we have to follow this process in loop
            if(sequence[sequenceArrayIndex] == mainArr[mainArrayIndex]){
            }
            mainArrayIndex += 1;
        }
        // we check here that our sequence index is equal to our sequence list length menas we iterate through whole list and all elements are in sequence 
        return sequenceArrayIndex == sequence.length;


    }catch(e){
        print("Exception in checkSubSequence : ${e.toString()}");
        return false;
    }
}
void main(){
 bool check = checkSubSequence([5,1,22,25,6,-1,8,10],[6,1,-1,10]);
 print('Answer is: ${check}');
}