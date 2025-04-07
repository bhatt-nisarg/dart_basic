int reverseArray(List<int> arr){
    try{
        int start = 0;
        int end = arr.length-1;
        while(start<end){
          // swap logic
          int temp;
          temp=arr[start];
          arr[start] = arr[end];
          arr[end] = temp;
          // increment start and deccrement last index
          start += 1;
          end -= 1;
        }
        return 0;
    }catch(e){
      throw Exception("Exception in reverse Array : ${e.toString()}");
    }
}